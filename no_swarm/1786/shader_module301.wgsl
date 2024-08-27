struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(30139i, 2147483647i, 1i, 0i, 2147483647i, i32(-2147483648), -89050i, 26925i, 1i, -1i, -1i, 1i, 43888i);

var<private> global1: vec2<f32>;

var<private> global2: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> f32 {
    var var_0 = select(all(!vec2<bool>(all(vec4<bool>(false, false, true, false)), false)), !(u_input.c == _wgslsmith_div_u32(~u_input.c, _wgslsmith_mult_u32(6718u, arg_2))), all(vec4<bool>(true, true, true, true)));
    global0 = array<i32, 13>();
    global2 = Struct_1(-183f, global1.x, 34289i, -389f);
    var_0 = false;
    var var_1 = arg_0;
    return 288f;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = arg_0.b;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -414f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1787f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-346f)) + 334f), true))), _wgslsmith_f_op_f32(f32(-1f) * -1029f));
    global0 = array<i32, 13>();
    var var_2 = false;
    let var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1444f - 1114f), arg_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(func_3(Struct_1(-2001f, arg_0.b, u_input.d, global2.a), Struct_1(1069f, 198f, 0i, 918f), _wgslsmith_add_u32(u_input.a, u_input.c))))), -1340f, arg_2.c, global1.x);
    return vec3<i32>(905i, arg_2.c >> (~u_input.a % 32u), arg_0.c);
}

fn func_1() -> vec3<f32> {
    var var_0 = ~69537u;
    global0 = array<i32, 13>();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -388f);
    var var_2 = _wgslsmith_add_vec3_i32(-_wgslsmith_mult_vec3_i32((vec3<i32>(-2147483647i, 1i, global2.c) ^ vec3<i32>(5986i, -69942i, u_input.d)) >> (vec3<u32>(u_input.a, 9402u, u_input.b.x) % vec3<u32>(32u)), vec3<i32>(-2147483647i, u_input.d, global2.c)), abs(select(_wgslsmith_sub_vec3_i32(func_2(Struct_1(925f, 363f, 25892i, global1.x), false, Struct_1(-938f, 245f, u_input.d, 363f)), -vec3<i32>(24579i, u_input.d, 13650i)), ~(~vec3<i32>(u_input.d, global0[_wgslsmith_index_u32(99407u, 13u)], global0[_wgslsmith_index_u32(u_input.c, 13u)])), false)));
    var_2 = reverseBits(firstTrailingBit(~(~vec3<i32>(-22792i, -2147483647i, 0i)) << ((_wgslsmith_clamp_vec3_u32(u_input.b.wxw, u_input.b.yxz, u_input.b.zwx) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 0u, 0u), vec3<u32>(u_input.a, u_input.b.x, u_input.a)) % vec3<u32>(32u))) % vec3<u32>(32u))));
    return vec3<f32>(_wgslsmith_f_op_f32(round(1588f)), global1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_1()), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(537f, 471f, 1114f) * vec3<f32>(global2.d, 1000f, -826f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global2.a)), vec3<bool>(true, true, true))))))));
    var var_1 = _wgslsmith_add_i32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c, ~4294967295u), 13u)], u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(-abs(max(53645i >> (u_input.a % 32u), ~(-1i))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.x)), global2.d)))));
}

