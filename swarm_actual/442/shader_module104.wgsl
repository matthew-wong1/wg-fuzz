struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: vec3<f32> = vec3<f32>(404f, -364f, 921f);

var<private> global2: u32 = 1u;

var<private> global3: vec2<u32>;

var<private> global4: bool = false;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec4<i32>) -> i32 {
    global2 = (_wgslsmith_div_u32(global3.x, u_input.d.x) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.e.x, global3.x), _wgslsmith_mult_vec2_u32(u_input.d.yz, u_input.d.wy)) % 32u)) & global3.x;
    var var_0 = Struct_1(countOneBits(abs(u_input.e.xyy)), _wgslsmith_clamp_i32(-firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(arg_2.x, u_input.b.x))), _wgslsmith_add_i32(i32(-1i) * -arg_2.x, _wgslsmith_mod_i32(countOneBits(arg_0), u_input.a)), 1i));
    global1 = vec3<f32>(_wgslsmith_div_f32(1000f, 1083f), -714f, _wgslsmith_f_op_f32(-global1.x));
    global0 = 38020u;
    var_0 = Struct_1(u_input.e.yxx, 2147483647i);
    return select(~arg_2.x, 1i >> (global3.x % 32u), !arg_1);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec3<f32> {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(select(global1.x, global1.x, true)), global1.x, -894f)))));
    let var_0 = _wgslsmith_f_op_f32(-global1.x);
    global0 = ~(~(~_wgslsmith_sub_u32(_wgslsmith_div_u32(33635u, arg_2.a.x), ~1u)));
    global4 = all(vec2<bool>(select(-20031i != arg_1.b, all(vec4<bool>(true, true, true, true)), false), true));
    global4 = !any(!select(vec2<bool>(false, false), vec2<bool>(true, true), true));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * global1.x)), _wgslsmith_f_op_f32(var_0 - _wgslsmith_div_f32(-765f, -978f)))));
}

fn func_1(arg_0: bool, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_1(vec3<u32>(_wgslsmith_div_u32(max(u_input.e.x, 0u), global3.x) & global3.x, u_input.d.x, ~reverseBits(17863u) | u_input.e.x), ~_wgslsmith_mod_i32(-2147483647i, ~func_2(26733i, arg_0, u_input.b)));
    global0 = 1u;
    global1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, global1.x) - _wgslsmith_f_op_f32(ceil(global1.x))), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -248f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(global1.x)), -1659f, _wgslsmith_f_op_f32(abs(global1.x))) + _wgslsmith_f_op_vec3_f32(func_3(Struct_1(var_0.a, 0i), Struct_1(var_0.a << (u_input.d.zxz % vec3<u32>(32u)), arg_1), Struct_1(_wgslsmith_mod_vec3_u32(var_0.a, vec3<u32>(var_0.a.x, u_input.d.x, global3.x)), _wgslsmith_add_i32(arg_1, 32169i))))), select(!vec3<bool>(any(vec3<bool>(arg_0, arg_0, false)), false, any(vec3<bool>(arg_0, arg_0, true))), vec3<bool>(arg_0, select(select(arg_0, true, arg_0), arg_0, arg_0), all(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, false, arg_0)))), arg_0)));
    let var_1 = Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(~firstTrailingBit(var_0.a), _wgslsmith_sub_vec3_u32(vec3<u32>(global3.x, 4294967295u, 64664u), var_0.a) << (max(u_input.d.xzx, vec3<u32>(0u, 16344u, 20355u)) % vec3<u32>(32u))), ~u_input.d.x, ~4294967295u >> (min(1u, _wgslsmith_sub_u32(26708u, global3.x)) % 32u)), func_2(max(max(1i, _wgslsmith_dot_vec2_i32(u_input.b.xz, vec2<i32>(u_input.b.x, 7482i))), ~(-arg_1)), !(arg_0 | arg_0), -min(u_input.b, _wgslsmith_clamp_vec4_i32(vec4<i32>(52237i, 17777i, var_0.b, u_input.a), vec4<i32>(u_input.a, -1i, 1i, arg_1), vec4<i32>(-18090i, -21910i, 2147483647i, u_input.c)))));
    global4 = any(select(select(select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), vec2<bool>(true, arg_0)), !vec2<bool>(arg_0, true), vec2<bool>(arg_0, false)), !vec2<bool>(arg_0, true), false), !(!vec2<bool>(arg_0, arg_0)), true));
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global2 = arg_0.a.x;
    global3 = select(vec2<u32>(arg_0.a.x, max(min(u_input.e.x, arg_0.a.x), ~global3.x)), ~arg_1.a.yz, true & !all(vec4<bool>(true, true, true, true))) << (_wgslsmith_sub_vec2_u32(select(~u_input.e.ww, abs(~vec2<u32>(1u, global3.x)), vec2<bool>(true, true)), _wgslsmith_div_vec2_u32(arg_0.a.zy, arg_1.a.xy)) % vec2<u32>(32u));
    let var_0 = true | (max(arg_0.a.x, max(~global3.x, arg_1.a.x)) < arg_0.a.x);
    var var_1 = (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1230f)) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x)))) & (_wgslsmith_f_op_f32(f32(-1f) * -530f) == _wgslsmith_f_op_f32(-1435f * _wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(min(global1.x, 1790f)), true))));
    global0 = ~1u;
    return _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, ~u_input.a, -1i, arg_0.b), _wgslsmith_mult_vec4_i32(u_input.b, _wgslsmith_mult_vec4_i32(firstTrailingBit(u_input.b), ~u_input.b) << ((u_input.e ^ _wgslsmith_sub_vec4_u32(vec4<u32>(38519u, 21222u, u_input.e.x, 1u), vec4<u32>(u_input.d.x, 9661u, arg_0.a.x, global3.x))) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~4294967295u;
    var var_0 = false;
    global2 = ~13566u;
    var var_1 = Struct_1(u_input.d.zxz, func_4(Struct_1(vec3<u32>(~global3.x, u_input.e.x, max(109168u, 10041u)), select(u_input.b.x << (0u % 32u), -52771i, false)), func_1(all(vec4<bool>(false, false, true, false)), 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(var_1.b, -1i, u_input.b.x, -1i), ~vec4<i32>(-2609i, -6224i, u_input.c, -2147483647i)), max(vec4<i32>(-21964i, 10196i, u_input.a, -41263i), abs(u_input.b))), _wgslsmith_f_op_f32(sign(-1721f)));
}

