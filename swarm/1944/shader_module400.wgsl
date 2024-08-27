struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: bool,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 2>;

var<private> global1: array<u32, 21> = array<u32, 21>(53239u, 4294967295u, 56948u, 50042u, 0u, 0u, 1u, 7832u, 13236u, 4294967295u, 1u, 1u, 4294967295u, 4294967295u, 1u, 0u, 1u, 12962u, 42704u, 14808u, 6945u);

var<private> global2: array<i32, 21>;

var<private> global3: f32;

var<private> global4: Struct_4;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: vec2<i32>) -> Struct_3 {
    global2 = array<i32, 21>();
    var var_0 = max(global4.b.yyz, vec3<u32>(abs(global1[_wgslsmith_index_u32(3825u, 21u)]), global4.b.x, global1[_wgslsmith_index_u32(~(~global4.a.c), 21u)]));
    var var_1 = _wgslsmith_add_u32(_wgslsmith_mod_u32(countOneBits(_wgslsmith_mod_u32(~4294967295u, 4294967295u)), ~countOneBits(_wgslsmith_add_u32(global4.b.x, 1u))), ~global4.b.x);
    let var_2 = Struct_3(global4.a, !all(vec4<bool>(false, global4.a.d, global4.a.a.b || global4.a.e.x, true)), global4.a.b, global4.a, select(global4.b, firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(9067u, global1[_wgslsmith_index_u32(global4.a.c, 21u)], global1[_wgslsmith_index_u32(global4.a.c, 21u)], global1[_wgslsmith_index_u32(global4.a.c, 21u)]), ~vec4<u32>(global4.b.x, var_0.x, 1u, global4.a.c))), true));
    var var_3 = var_2.d;
    return var_2;
}

fn func_3() -> u32 {
    var var_0 = -1430f;
    global0 = array<Struct_5, 2>();
    let var_1 = _wgslsmith_clamp_vec3_u32(global4.b.ywy, vec3<u32>(~global1[_wgslsmith_index_u32(firstTrailingBit(1u), 21u)] & select(1u, 4294967295u, !global4.a.b.b), min(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 21u)], 21u)], ~global1[_wgslsmith_index_u32(global4.b.x, 21u)]) & ~4294967295u, ~(12671u >> ((0u << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 21u)] % 32u)) % 32u))), vec3<u32>(global1[_wgslsmith_index_u32(1u, 21u)], ~func_2(vec2<i32>(u_input.a.x, 67471i) << (global4.b.yy % vec2<u32>(32u))).e.x, ~1u));
    global0 = array<Struct_5, 2>();
    let var_2 = _wgslsmith_div_vec3_u32(~vec3<u32>(global4.b.x, _wgslsmith_dot_vec3_u32(select(vec3<u32>(var_1.x, var_1.x, global4.b.x), vec3<u32>(global4.a.c, 60371u, global1[_wgslsmith_index_u32(6230u, 21u)]), vec3<bool>(false, global4.a.a.b, global4.a.a.b)), countOneBits(var_1)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(57904u, 12196u, global1[_wgslsmith_index_u32(var_1.x, 21u)]), 1u), 21u)]), global4.b.ywy);
    return firstLeadingBit(global4.b.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_5, arg_2: Struct_3, arg_3: vec3<u32>) -> Struct_5 {
    var var_0 = -1121f;
    let var_1 = 1i;
    let var_2 = !(!arg_0.x) || arg_1.a.c.b;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4.a.a.a.x, global4.a.a.a.x, !arg_2.a.a.b)))), func_2(u_input.a.xy ^ vec2<i32>(var_1, -46557i)).d.b.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.a.b.a.x + _wgslsmith_f_op_f32(-arg_2.c.a.x)), _wgslsmith_f_op_f32(global4.a.b.a.x * global4.a.b.a.x)));
    var var_4 = global4.a.b;
    return Struct_5(Struct_3(Struct_2(arg_2.a.a, func_2(vec2<i32>(-1i, var_1)).c, arg_3.x, _wgslsmith_dot_vec2_u32(arg_2.e.xz, vec2<u32>(global4.a.c, global4.b.x)) > 33934u, select(vec3<bool>(true, var_4.b, arg_2.c.b), vec3<bool>(var_2, var_4.b, true), 4294967295u > arg_2.d.c)), all(arg_0.xw), func_2(~vec2<i32>(2147483647i, 0i)).a.a, global4.a, vec4<u32>(~(~0u), 9787u, 17226u, 18279u)), arg_1.b);
}

fn func_1(arg_0: vec2<u32>) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(max(601f, global4.a.b.a.x));
    var var_1 = _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(arg_0.x, 21u)], _wgslsmith_div_i32(u_input.a.x, 2147483647i));
    var var_2 = select(select(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), global4.a.e.zy, global4.a.a.b), false && global4.a.e.x), vec2<bool>(true, true), global4.a.e.x), vec2<bool>(true, true), true);
    let var_3 = -1000f;
    var_2 = global4.a.e.zx;
    return func_4(vec4<bool>(any(!vec2<bool>(false, var_2.x)), !global4.a.e.x, global4.a.e.x, any(global4.a.e.xz)), Struct_5(func_2(vec2<i32>(select(global2[_wgslsmith_index_u32(arg_0.x, 21u)], u_input.a.x, global4.a.a.b), u_input.a.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 193f, -499f, 844f) - vec4<f32>(-444f, var_3, global4.a.a.a.x, global4.a.b.a.x))))), Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, var_3, 1000f))), global4.a.e.x && true), global4.a.b, _wgslsmith_mod_u32(func_3(), countOneBits(4294967295u)), global4.a.b.b, vec3<bool>(func_2(u_input.a.yx).c.b, false, global4.a.c <= 4294967295u)), true, func_2(vec2<i32>(_wgslsmith_add_i32(-39621i, global2[_wgslsmith_index_u32(arg_0.x, 21u)]), 1i)).a.b, func_2(select(abs(u_input.a.xx), u_input.a.zy, var_2.x)).a, ~(vec4<u32>(global4.a.c, arg_0.x, 1u, 1u) ^ abs(global4.b))), ~(~vec3<u32>(~0u, ~4294967295u, global1[_wgslsmith_index_u32(6268u, 21u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 2>();
    var var_0 = true;
    var_0 = global4.a.e.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(872f * global4.a.a.a.x) * global4.a.a.a.x);
    var var_2 = ~reverseBits(vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(25224u, global1[_wgslsmith_index_u32(111314u, 21u)]), vec2<u32>(global1[_wgslsmith_index_u32(47718u, 21u)], global4.a.c)), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global4.b.x ^ 43586u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 26945u, 13960u, 4294967295u), vec4<u32>(global4.b.x, 4294967295u, global4.b.x, 51533u)), 21u)], global1[_wgslsmith_index_u32(global4.a.c, 21u)] & 1u), 21u)]));
    var var_3 = -vec2<i32>(2147483647i, -6962i);
    let var_4 = func_1(max(global4.b.xy, global4.b.zw));
    var var_5 = -global2[_wgslsmith_index_u32(~max(0u, var_2.x), 21u)];
    var var_6 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.e, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_6.a.a.a.a.x))), -401f, select(global4.b, min(vec4<u32>(_wgslsmith_mult_u32(var_4.a.d.c, var_4.a.d.c), _wgslsmith_dot_vec3_u32(var_6.a.e.zwy, global4.b.zwy), _wgslsmith_div_u32(102614u, var_4.a.a.c), 13406u), ~var_4.a.e ^ vec4<u32>(global4.a.c, 59760u, 1u, var_2.x)), global4.a.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-190f, _wgslsmith_f_op_f32(-var_6.a.a.a.a.x), var_6.b.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-982f, global4.a.b.a.x, 400f))) + var_4.a.a.b.a))));
}

