struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: vec3<i32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<u32>, 17>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: u32) -> vec3<bool> {
    let var_0 = !(!vec4<bool>(any(vec2<bool>(true, true)), !(arg_1 != false), arg_1 & select(true, true, arg_1), (arg_1 && false) | arg_1));
    global0 = Struct_2(~max(min(vec3<u32>(global0.a.x, global0.a.x, 23664u), vec3<u32>(u_input.c.x, 0u, global0.a.x)), reverseBits(~u_input.c.yxx)), u_input.e, Struct_1((-vec4<i32>(u_input.d.x, global0.c.c.x, u_input.d.x, u_input.e) ^ global0.c.a) | ~(~u_input.b), global0.c.b, ~abs(abs(global0.c.a.xx))));
    global1 = array<vec2<u32>, 17>();
    global0 = Struct_2(select(global0.a, ~(~(~global0.a)), !(!select(vec3<bool>(false, true, arg_1), vec3<bool>(false, var_0.x, true), var_0.yzx))), 309i ^ (_wgslsmith_sub_i32(~2366i, firstLeadingBit(22400i)) << (~global0.a.x % 32u)), global0.c);
    var var_1 = !var_0;
    return vec3<bool>(true, any(vec4<bool>(false, var_1.x && arg_1, !arg_1, var_0.x)), false);
}

fn func_2() -> vec2<u32> {
    var var_0 = -1059f;
    var var_1 = select(select(~vec3<u32>(firstLeadingBit(u_input.c.x), ~1u, global0.a.x), ~_wgslsmith_add_vec3_u32(~global0.a, vec3<u32>(79441u, global0.a.x, u_input.c.x)), (global0.b != _wgslsmith_mod_i32(global0.b, u_input.e)) || any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), false))), select(vec3<u32>(0u, _wgslsmith_dot_vec3_u32(global0.a, vec3<u32>(global0.a.x, 1u, 115287u)), 19534u), ~global0.a, vec3<bool>(true, true, 21666i >= global0.b)) << (select(max(reverseBits(u_input.c.wyz), _wgslsmith_add_vec3_u32(vec3<u32>(global0.a.x, 38231u, u_input.c.x), global0.a)), vec3<u32>(0u, 15002u, 6126u) & _wgslsmith_mult_vec3_u32(global0.a, vec3<u32>(global0.a.x, 0u, u_input.c.x)), true) % vec3<u32>(32u)), (_wgslsmith_mod_i32(reverseBits(u_input.d.x), 0i << (1u % 32u)) < _wgslsmith_mult_i32(1i, _wgslsmith_sub_i32(u_input.b.x, global0.b))) && all(select(func_3(vec2<f32>(-903f, global0.c.b.x), false, u_input.c.x), vec3<bool>(true, true, false), vec3<bool>(true, true, false))));
    let var_2 = Struct_4(15873u, reverseBits(u_input.b.xwy));
    let var_3 = _wgslsmith_div_vec3_u32(vec3<u32>(firstLeadingBit(1u), var_2.a, ~1u), reverseBits(~u_input.c.ywy));
    let var_4 = (_wgslsmith_sub_vec2_u32(var_3.xy, select(global0.a.zx, vec2<u32>(2036u, 0u), false)) << (abs(vec2<u32>(50645u, _wgslsmith_clamp_u32(global0.a.x, 44923u, 88354u))) % vec2<u32>(32u))) & global1[_wgslsmith_index_u32(4294967295u, 17u)];
    return vec2<u32>(u_input.c.x, 0u);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_5, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_mult_i32(-2147483647i >> (arg_1.b.a % 32u), arg_2.c.x);
    let var_1 = _wgslsmith_clamp_vec2_u32(u_input.c.zz, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~global1[_wgslsmith_index_u32(1u, 17u)]), _wgslsmith_add_vec2_u32((global1[_wgslsmith_index_u32(u_input.c.x, 17u)] & global1[_wgslsmith_index_u32(17977u, 17u)]) << (u_input.c.xy % vec2<u32>(32u)), global0.a.xy)), 17u)], ~global1[_wgslsmith_index_u32(global0.a.x, 17u)]);
    let var_2 = 7800i;
    var var_3 = _wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~u_input.c.xy, func_2()), ~0u), ~func_2().x & _wgslsmith_dot_vec4_u32(~u_input.c, u_input.c)) >> (reverseBits(abs(max(44071u, u_input.c.x) << (4294967295u % 32u))) % 32u);
    let var_4 = Struct_2(vec3<u32>(abs(69839u), u_input.c.x, u_input.c.x | 1u), firstTrailingBit(_wgslsmith_div_i32(0i, ~(-1i) ^ (global0.b >> (arg_1.d.a % 32u)))), Struct_1(-arg_2.a, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(arg_2.b, _wgslsmith_f_op_vec4_f32(-global0.c.b)), _wgslsmith_f_op_vec4_f32(-global0.c.b)), _wgslsmith_clamp_vec2_i32(max(global0.c.c, vec2<i32>(-13756i, var_2)), firstLeadingBit(~global0.c.a.wx), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 20781i), arg_2.a.zw))));
    return !func_3(arg_2.b.wx, false & (all(vec3<bool>(true, false, true)) | any(vec3<bool>(true, false, true))), global0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 17>();
    let var_0 = global0.c;
    let var_1 = any(vec2<bool>(any(vec3<bool>(true, true, false)), any(func_1(~vec2<i32>(global0.c.a.x, global0.b), Struct_5(global0.c.a.x, Struct_4(u_input.c.x, vec3<i32>(1i, -2147483647i, var_0.a.x)), vec3<i32>(var_0.a.x, var_0.a.x, global0.c.c.x), Struct_4(0u, vec3<i32>(u_input.e, 4410i, var_0.a.x))), global0.c))));
    let var_2 = var_0.a.x >> (~(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.c.wwx, u_input.c.xzz), _wgslsmith_div_u32(global0.a.x, 103098u), ~global0.a.x)) % 32u);
    var var_3 = var_0.a.x;
    global0 = Struct_2(~vec3<u32>(0u, global0.a.x, 27192u), 1i & ~min(-25374i, -var_0.a.x), global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_f_op_f32(floor(global0.c.b.x)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x)))), -389f, _wgslsmith_f_op_f32(-global0.c.b.x)), vec2<i32>(~reverseBits(-15422i), _wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, -15449i), reverseBits(69184i)) & max(-u_input.d.x, _wgslsmith_sub_i32(0i, 3696i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1203f), _wgslsmith_f_op_f32(trunc(-603f)), -1699f, _wgslsmith_f_op_f32(663f * 1224f)), global0.c.b)));
}

