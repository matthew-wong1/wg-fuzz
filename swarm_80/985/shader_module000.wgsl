struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(Struct_1(vec2<i32>(0i, 15400i), -1142f)), Struct_2(Struct_1(vec2<i32>(0i, i32(-2147483648)), 315f)), Struct_2(Struct_1(vec2<i32>(22542i, -36785i), 394f)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 19677i), 1000f)), Struct_2(Struct_1(vec2<i32>(68126i, -1i), 152f)), Struct_2(Struct_1(vec2<i32>(-1i, 48503i), 1579f)), Struct_2(Struct_1(vec2<i32>(0i, -10640i), -1916f)), Struct_2(Struct_1(vec2<i32>(74671i, 6483i), 1083f)), Struct_2(Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), 217f)), Struct_2(Struct_1(vec2<i32>(0i, 30209i), 259f)), Struct_2(Struct_1(vec2<i32>(1i, -31949i), -162f)), Struct_2(Struct_1(vec2<i32>(1i, -45303i), 211f)), Struct_2(Struct_1(vec2<i32>(4240i, 3837i), 759f)), Struct_2(Struct_1(vec2<i32>(-11221i, 0i), 514f)), Struct_2(Struct_1(vec2<i32>(0i, 20465i), 404f)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -38777i), 531f)), Struct_2(Struct_1(vec2<i32>(2147483647i, 1i), 1000f)), Struct_2(Struct_1(vec2<i32>(44470i, -7031i), 360f)), Struct_2(Struct_1(vec2<i32>(2147483647i, 16122i), -684f)), Struct_2(Struct_1(vec2<i32>(10193i, -1i), 354f)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -4795i), -894f)), Struct_2(Struct_1(vec2<i32>(-63646i, 73195i), 1148f)), Struct_2(Struct_1(vec2<i32>(2147483647i, -13881i), -146f)), Struct_2(Struct_1(vec2<i32>(63477i, 0i), 469f)));

var<private> global1: Struct_3 = Struct_3(-1000f);

var<private> global2: array<i32, 16>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec2<u32> {
    let var_0 = ~(vec4<u32>(52105u, u_input.b.x, 77812u << ((1u >> (u_input.d.x % 32u)) % 32u), u_input.b.x) ^ min(vec4<u32>(48613u, 4294967295u, 0u, u_input.b.x), _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(1u, u_input.e, 4294967295u, 4294967295u)), select(vec4<u32>(4294967295u, 1u, u_input.e, 4294967295u), vec4<u32>(u_input.e, 4294967295u, u_input.e, 15319u), vec4<bool>(false, true, false, true)))));
    global0 = array<Struct_2, 24>();
    var var_1 = global1.a;
    let var_2 = -1036f;
    global1 = Struct_3(_wgslsmith_f_op_f32(abs(global1.a)));
    return vec2<u32>(~(~u_input.e), u_input.b.x) ^ (vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(var_0.x, u_input.b.x), 4294967295u ^ var_0.x), 2745u) & firstLeadingBit(min(vec2<u32>(var_0.x, u_input.e), vec2<u32>(4294967295u, u_input.d.x))));
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_mult_i32(u_input.a, 1i);
    global0 = array<Struct_2, 24>();
    let var_1 = vec3<u32>(~_wgslsmith_sub_u32(~u_input.b.x, _wgslsmith_div_u32(abs(4294967295u), 42481u)), u_input.e & ~1u, ~(~(~(~u_input.d.x))));
    let var_2 = ~func_3();
    global1 = Struct_3(-585f);
    return !(!all(vec3<bool>(true, true, true))) != false;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: bool) -> f32 {
    global2 = array<i32, 16>();
    global2 = array<i32, 16>();
    var var_0 = -29241i & _wgslsmith_div_i32(global2[_wgslsmith_index_u32(select(firstTrailingBit(u_input.e), 70987u, func_2()), 16u)] ^ global2[_wgslsmith_index_u32(~(~u_input.e), 16u)], _wgslsmith_add_i32(global2[_wgslsmith_index_u32(~u_input.e, 16u)], global2[_wgslsmith_index_u32(19092u, 16u)]));
    var var_1 = u_input.b.zz;
    var var_2 = reverseBits(select(vec3<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-4237i, global2[_wgslsmith_index_u32(var_1.x, 16u)], global2[_wgslsmith_index_u32(u_input.d.x, 16u)], u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.c, u_input.c)), u_input.a), _wgslsmith_add_vec3_i32(abs(vec3<i32>(global2[_wgslsmith_index_u32(28765u, 16u)], 2147483647i, 1i)), -vec3<i32>(u_input.a, 2147483647i, global2[_wgslsmith_index_u32(3443u, 16u)])), vec3<bool>(arg_2, arg_0.a == arg_0.a, arg_1.x)) >> (firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, 0u, var_1.x), ~vec3<u32>(53372u, u_input.b.x, u_input.d.x), u_input.b)) % vec3<u32>(32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1599f * _wgslsmith_f_op_f32(f32(-1f) * -1038f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(269f * global1.a));
    let var_1 = global0[_wgslsmith_index_u32(u_input.d.x >> (_wgslsmith_dot_vec3_u32(u_input.b ^ firstTrailingBit(u_input.b), vec3<u32>(1u, ~max(79427u, u_input.d.x), 65297u)) % 32u), 24u)];
    global1 = var_0;
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(333f * 1246f)), 1000f)), -937f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(738f * -730f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(var_0, vec2<bool>(false, false), true)), _wgslsmith_div_f32(332f, var_0.a))) + 305f))), _wgslsmith_f_op_f32(-358f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_3(-196f), vec2<bool>(false, true), true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(658f + var_1.a.b)))));
    var_2 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -510f), global1.a, var_0.a, _wgslsmith_f_op_f32(-518f * -844f))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~1i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -521f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-499f)) * -671f), _wgslsmith_f_op_f32(func_1(Struct_3(var_1.a.b), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), any(vec3<bool>(false, true, false)))))), select(~_wgslsmith_add_u32(u_input.e, select(32837u, 0u, false)), u_input.e, !(!func_2())));
}

