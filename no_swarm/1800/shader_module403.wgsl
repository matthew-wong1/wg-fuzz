struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec3<i32>) -> vec2<i32> {
    var var_0 = firstTrailingBit(vec3<u32>(arg_2.a.a, u_input.a.x, abs(arg_2.a.a)));
    var_0 = u_input.a;
    let var_1 = arg_2.a;
    var_0 = ~(firstLeadingBit(u_input.a) | u_input.a);
    var_0 = u_input.a;
    return vec2<i32>(2147483647i & ~_wgslsmith_sub_i32(arg_2.a.b, _wgslsmith_div_i32(u_input.c, 10077i)), abs(arg_3.x));
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = reverseBits(vec3<i32>(0i, -46070i, _wgslsmith_sub_i32(~(~u_input.c), ~(~(-2147483647i)))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_u32(~arg_0.a >> (~u_input.a.x % 32u), _wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x, _wgslsmith_add_u32(u_input.a.x, arg_0.a))), arg_0.b >> (~46691u % 32u)));
    var var_2 = 64201u;
    var_1 = Struct_2(arg_0);
    var_1 = Struct_2(Struct_1(arg_0.a & ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, var_1.a.a), vec3<u32>(0u, 43750u, var_1.a.a)), ~(~2147483647i)));
    return vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.b ^ 0i, -arg_0.b & (-2147483647i >> (1u % 32u))), ~min(vec2<i32>(u_input.b, var_0.x), firstLeadingBit(vec2<i32>(arg_0.b, 17212i)))), -u_input.c);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec2<i32>) -> bool {
    var var_0 = Struct_1(firstTrailingBit(1u), _wgslsmith_div_i32(arg_1.a.b, abs(-1i >> (~u_input.a.x % 32u))));
    var var_1 = !(!vec2<bool>(false, arg_0));
    var var_2 = Struct_2(arg_1.a);
    var var_3 = -select(-vec3<i32>(var_2.a.b, arg_1.a.b, u_input.c), vec3<i32>(countOneBits(arg_1.a.b), -u_input.b, _wgslsmith_sub_i32(~(-2147483647i), arg_2.x)), !var_1.x);
    var var_4 = Struct_1(var_2.a.a, -1i);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-480f - _wgslsmith_f_op_f32(-340f - -1855f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -694f), _wgslsmith_f_op_f32(floor(-618f))) + 1094f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1061f, _wgslsmith_f_op_f32(round(-1000f)))))) * 339f);
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> i32 {
    var var_0 = ~(~(-firstLeadingBit(func_2(vec3<i32>(arg_1.b, -1i, -2147483647i), vec2<i32>(2147483647i, arg_1.b), Struct_2(arg_1), vec3<i32>(-11707i, arg_1.b, u_input.b)))));
    var var_1 = 0u;
    var_1 = u_input.a.x;
    var var_2 = arg_1;
    let var_3 = !func_4(true, Struct_2(arg_1), func_3(arg_1));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_vec2_u32(~(max(u_input.a.yx, u_input.a.zx) >> (vec2<u32>(7251u, u_input.a.x) % vec2<u32>(32u))), vec2<u32>(~min(47145u, 1u), _wgslsmith_div_u32(u_input.a.x, u_input.a.x)));
    var_0 = ~(~(~(~u_input.a.yx)));
    var var_1 = Struct_1(1u, firstTrailingBit(min(-reverseBits(9682i), min(-39426i, u_input.b))));
    var_1 = Struct_1(~1u, func_1((2147483647i >> (var_0.x % 32u)) < 27325i, Struct_1(~var_1.a, u_input.c)) << (var_1.a % 32u));
    let var_2 = _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-_wgslsmith_clamp_i32(var_1.b, var_1.b, -1i), firstTrailingBit(countOneBits(var_1.b)), -var_1.b ^ _wgslsmith_mod_i32(var_1.b, 2147483647i), 1i | _wgslsmith_mod_i32(var_1.b, 10563i)), abs(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, var_1.b, -2147483647i, -10852i), vec4<i32>(u_input.b, u_input.c, -1i, 1i), vec4<i32>(6285i, -2147483647i, var_1.b, u_input.b)), firstTrailingBit(vec4<i32>(0i, u_input.c, 2147483647i, var_1.b))))), firstTrailingBit(-_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 1i, 2147483647i, 36759i), vec4<i32>(-9661i, 0i, var_1.b, var_1.b)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.b, u_input.c, u_input.c, 68250i), vec4<i32>(2147483647i, var_1.b, -11960i, 35348i)))), countOneBits(vec4<i32>(select(u_input.c >> (1u % 32u), 2147483647i, all(vec4<bool>(false, true, true, false))), 12502i, u_input.c, abs(i32(-1i) * -10995i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-238f, 192f))), -829f, -453f, 1f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(sign(483f)), _wgslsmith_f_op_f32(-205f * 750f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(329f, 1024f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1232f, -1758f, 512f, 604f))))), func_3(Struct_1(~39910u, firstLeadingBit(u_input.b))).x, ~4294967295u, var_2.wwz, ~u_input.a.x);
}

