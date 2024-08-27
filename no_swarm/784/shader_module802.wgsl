struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: array<u32, 32>;

var<private> global2: Struct_3 = Struct_3(Struct_1(-44102i, vec4<i32>(1i, 34813i, 28843i, 17944i)), Struct_2(vec4<i32>(16573i, 2147483647i, -9868i, 1i), -2179f, -19198i, Struct_1(i32(-2147483648), vec4<i32>(29172i, i32(-2147483648), 13627i, 0i))));

var<private> global3: array<Struct_1, 12>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<bool>) -> Struct_2 {
    return global0[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(~min(u_input.c.x, 0u), u_input.b)), 10u)];
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1) -> bool {
    let var_0 = arg_2.a >> (max(global1[_wgslsmith_index_u32(select(global1[_wgslsmith_index_u32(98329u, 32u)], 18073u ^ (u_input.c.x & global1[_wgslsmith_index_u32(u_input.e, 32u)]), all(vec2<bool>(true, true)) & false), 32u)], global1[_wgslsmith_index_u32(325u, 32u)]) % 32u);
    var var_1 = func_2(-(~(global2.b.d.b.wyy ^ vec3<i32>(global2.a.a, var_0, 0i)) & global2.b.a.zwx), vec3<bool>(true, true, true));
    var var_2 = Struct_2(~_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.b.x, var_0, -24234i, arg_0) | ~global2.b.d.b, vec4<i32>(select(global2.a.a, arg_2.b.x, true), select(var_0, arg_1.b.d.b.x, true), i32(-1i) * -10834i, firstTrailingBit(17247i))), -438f, ~global2.a.a, Struct_1(global2.a.a, vec4<i32>(arg_2.a, ~0i, abs(2147483647i | var_0), countOneBits(var_0))));
    var var_3 = 14285u;
    var var_4 = false;
    return -2147483647i <= global2.b.c;
}

fn func_3() -> bool {
    global1 = array<u32, 32>();
    global1 = array<u32, 32>();
    let var_0 = !(global2.b.d.b.x <= -2147483647i);
    var var_1 = vec2<f32>(653f, _wgslsmith_f_op_f32(global2.b.b + _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(660f, 117f, 1246f, 1881f) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.b.b, -1189f, global2.b.b, -1000f), vec4<f32>(global2.b.b, var_1.x, -269f, 1000f)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(global2.b.b)), 563f, _wgslsmith_f_op_f32(var_1.x - global2.b.b), _wgslsmith_f_op_f32(global2.b.b - global2.b.b)))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1196f, var_1.x, -1684f, 828f) * vec4<f32>(651f, -623f, 1000f, var_1.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1244f, -1212f, 1023f, global2.b.b)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, global2.b.b, var_1.x, 1037f), vec4<f32>(var_1.x, var_1.x, -512f, global2.b.b)) * vec4<f32>(global2.b.b, -2419f, global2.b.b, 1000f))))), false));
    return !(true == !(!func_1(global2.a.a, Struct_3(Struct_1(global2.a.a, global2.b.d.b), global0[_wgslsmith_index_u32(0u, 10u)]), Struct_1(global2.a.b.x, vec4<i32>(global2.a.b.x, global2.b.d.b.x, -1i, global2.a.a)))));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: vec4<bool>) -> Struct_3 {
    global0 = array<Struct_2, 10>();
    var var_0 = func_2(-global2.b.a.zyx, arg_2.wxx).d;
    let var_1 = u_input.a.x;
    let var_2 = ~_wgslsmith_mult_vec2_u32(u_input.c.xy, ~_wgslsmith_add_vec2_u32(~vec2<u32>(1u, global1[_wgslsmith_index_u32(4294967295u, 32u)]), ~vec2<u32>(4294967295u, u_input.d.x)));
    global3 = array<Struct_1, 12>();
    return Struct_3(func_2(vec3<i32>(_wgslsmith_add_i32(-2147483647i, 27443i), -firstTrailingBit(global2.b.d.a), i32(-1i) * -7604i), arg_2.xwz).d, func_2(_wgslsmith_add_vec3_i32(global2.b.d.b.zzy, vec3<i32>(1i, var_0.a, _wgslsmith_div_i32(-1i, 3354i))), select(arg_2.xxx, vec3<bool>(true, true, true), vec3<bool>(false | arg_0, all(vec3<bool>(arg_2.x, true, arg_0)), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(any(vec2<bool>(true, true)), false)));
    let var_1 = ~(global2.b.a.xw & -(~global2.a.b.zw)) >> (_wgslsmith_add_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.d, u_input.a.xw), u_input.c.x), max(vec2<u32>(u_input.b, ~55042u), u_input.a.zz)) % vec2<u32>(32u));
    var var_2 = global2.a;
    var var_3 = func_4(true, -984f, select(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), func_1(2852i, Struct_3(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31798u, 32u)], 32u)], 32u)], 32u)], 32u)], 32u)], 12u)], Struct_2(global2.a.b, global2.b.b, var_1.x, Struct_1(39723i, var_2.b))), Struct_1(var_1.x, global2.a.b)) | true, func_3()), vec4<bool>(false, true, true, var_2.b.x >= (var_1.x & var_2.b.x)), false || (_wgslsmith_mod_u32(u_input.d.x, 108992u) >= ~global1[_wgslsmith_index_u32(19583u, 32u)])));
    global1 = array<u32, 32>();
    global0 = array<Struct_2, 10>();
    let var_4 = _wgslsmith_div_i32(-9816i, abs(countOneBits(25570i)));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(u_input.a));
}

