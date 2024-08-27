struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec4<i32>(0i, 1i, -14893i, -35068i), false, vec2<f32>(-253f, -2112f), vec2<i32>(1i, -19552i)), Struct_1(vec4<i32>(-59203i, 0i, 1314i, 64125i), false, vec2<f32>(-642f, 1000f), vec2<i32>(-1i, 7420i)), Struct_1(vec4<i32>(3589i, i32(-2147483648), 11732i, -1i), true, vec2<f32>(457f, -882f), vec2<i32>(1i, -17533i)), Struct_1(vec4<i32>(-24960i, -1i, -1i, 16305i), false, vec2<f32>(148f, -1612f), vec2<i32>(0i, -1i)), Struct_1(vec4<i32>(20536i, 5646i, i32(-2147483648), 2147483647i), true, vec2<f32>(434f, -1274f), vec2<i32>(16242i, 1i)), Struct_1(vec4<i32>(-27089i, 2147483647i, 2147483647i, 4227i), false, vec2<f32>(1280f, 144f), vec2<i32>(50681i, 0i)), Struct_1(vec4<i32>(1i, 2147483647i, 1i, 2147483647i), false, vec2<f32>(-349f, 1079f), vec2<i32>(i32(-2147483648), -1i)), Struct_1(vec4<i32>(-32746i, -71291i, i32(-2147483648), 39660i), true, vec2<f32>(374f, -278f), vec2<i32>(-32179i, 21888i)), Struct_1(vec4<i32>(-1i, -4723i, -8584i, 2147483647i), false, vec2<f32>(-633f, -473f), vec2<i32>(13729i, -4527i)), Struct_1(vec4<i32>(1i, 0i, 2147483647i, i32(-2147483648)), true, vec2<f32>(651f, -1522f), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec4<i32>(19466i, 1i, 2147483647i, 26290i), false, vec2<f32>(-559f, -2358f), vec2<i32>(47421i, 50430i)));

var<private> global1: Struct_4 = Struct_4(Struct_2(130f, Struct_1(vec4<i32>(28673i, 0i, 2953i, 2147483647i), true, vec2<f32>(-1409f, -1325f), vec2<i32>(i32(-2147483648), 7051i)), Struct_1(vec4<i32>(2147483647i, 0i, 0i, i32(-2147483648)), true, vec2<f32>(1289f, -291f), vec2<i32>(-4010i, i32(-2147483648))), vec3<bool>(true, true, true)), vec4<bool>(true, false, false, false), 207f);

var<private> global2: vec4<f32>;

var<private> global3: array<f32, 24> = array<f32, 24>(-1442f, 290f, -640f, 310f, -618f, 1355f, 850f, -350f, 2165f, -1533f, 528f, 919f, -2101f, -1486f, 273f, 629f, -1000f, -1000f, -601f, 1299f, 913f, -345f, -1527f, -341f);

var<private> global4: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_1(arg_0: vec3<f32>) -> vec3<u32> {
    var var_0 = u_input.c;
    let var_1 = Struct_2(-602f, Struct_1(u_input.a, true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(948f, -1495f)), _wgslsmith_div_vec2_i32(u_input.a.xw, vec2<i32>(u_input.a.x, -1i))), global0[_wgslsmith_index_u32(abs(0u), 11u)], global1.b.zxw);
    return u_input.c.zwz;
}

fn func_3() -> vec4<f32> {
    let var_0 = vec2<u32>(countOneBits(u_input.b << (u_input.c.x % 32u)), u_input.c.x);
    var var_1 = _wgslsmith_div_u32(~(0u ^ ~var_0.x), 76179u);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-885f * -1991f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), global2.x)))));
    global2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.x, global2.x, global2.x, global1.c), vec4<f32>(global2.x, -1000f, global2.x, 1141f))) + vec4<f32>(global3[_wgslsmith_index_u32(13601u, 24u)], global2.x, global3[_wgslsmith_index_u32(var_0.x, 24u)], -773f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-442f, 1000f, global3[_wgslsmith_index_u32(var_0.x, 24u)], -631f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3[_wgslsmith_index_u32(u_input.b, 24u)], 624f, -564f, global1.c)))), all(global1.a.d)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global1.a.c.c.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1292f + global1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -242f))))));
    var var_3 = abs(min(~(-(~vec4<i32>(global1.a.b.d.x, u_input.a.x, 10122i, global1.a.b.d.x))), u_input.a));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.a.c.c.x))), 1282f, 193f, 1696f) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(618f, global1.a.b.c.x, -256f, global3[_wgslsmith_index_u32(var_0.x, 24u)]), vec4<f32>(global3[_wgslsmith_index_u32(111484u, 24u)], global3[_wgslsmith_index_u32(u_input.c.x, 24u)], 954f, -1292f), var_0.x == 41049u)) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.x, global2.x, -1318f, global1.c)))))))));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_3) -> vec2<i32> {
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.c.c.x, global1.c, global1.a.a, arg_1.a)) + vec4<f32>(global2.x, arg_1.a, 733f, 334f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-890f, arg_1.c.c.x, -974f, -825f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-770f, global3[_wgslsmith_index_u32(4294967295u, 24u)], global1.a.c.c.x, global1.c) + vec4<f32>(global1.a.c.c.x, global2.x, arg_2.b.a, global2.x)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 24u)], global3[_wgslsmith_index_u32(1u, 24u)], global1.c, -717f) - vec4<f32>(1000f, 665f, 775f, arg_1.b.c.x))), _wgslsmith_f_op_vec4_f32(func_3()))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-777f - global3[_wgslsmith_index_u32(u_input.c.x, 24u)])), -880f, _wgslsmith_f_op_f32(-963f - 2007f)));
    let var_0 = -29748i;
    var var_1 = u_input.c.x;
    global1 = Struct_4(global1.a, global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.c.c.x), _wgslsmith_f_op_f32(-1208f + -1538f)))));
    global4 = ((u_input.a.x & var_0) << (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.c.x, abs(arg_0.x)), ~19934u, u_input.c.x) % 32u)) | arg_2.b.c.a.x;
    return vec2<i32>(firstLeadingBit(_wgslsmith_div_i32(global1.a.b.a.x, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-2147483647i, arg_2.b.c.a.x), -arg_2.b.b.a.x, -2147483647i))), 15396i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 11>();
    let var_0 = (func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global2.zyz)))) << (u_input.c.yyz % vec3<u32>(32u))) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 9950u, 4294967295u), u_input.c.wxw), 1u), _wgslsmith_add_u32(4294967295u >> (1u % 32u), abs(u_input.c.x))), vec3<u32>(_wgslsmith_mod_u32(10035u, _wgslsmith_mod_u32(4294967295u, 3430u)), 36283u, u_input.b));
    let var_1 = -reverseBits(_wgslsmith_mod_vec2_i32(func_2(u_input.c, global1.a, Struct_3(vec4<i32>(1i, global1.a.b.d.x, 0i, 37587i), Struct_2(-838f, Struct_1(global1.a.c.a, true, global1.a.b.c, vec2<i32>(33145i, 2147483647i)), Struct_1(u_input.a, false, global1.a.b.c, global1.a.c.a.yx), vec3<bool>(global1.a.c.b, global1.a.d.x, global1.a.c.b)))), func_2(vec4<u32>(var_0.x, u_input.b, 1u, var_0.x), Struct_2(global2.x, Struct_1(vec4<i32>(15102i, global1.a.c.d.x, 1i, global1.a.b.d.x), global1.b.x, vec2<f32>(-891f, 616f), global1.a.b.d), global1.a.b, global1.b.xxw), Struct_3(u_input.a, Struct_2(global2.x, Struct_1(u_input.a, true, global2.wy, global1.a.b.a.yw), global1.a.b, global1.a.d))))) | select(vec2<i32>(0i, -u_input.a.x), ~vec2<i32>(-1i, u_input.a.x | u_input.a.x), global1.b.wz);
    global3 = array<f32, 24>();
    let var_2 = _wgslsmith_add_i32(-41301i, func_2(~vec4<u32>(u_input.b, 20611u, 24776u, 39675u), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.a) + global1.a.a), Struct_1(~vec4<i32>(global1.a.c.d.x, global1.a.c.a.x, global1.a.c.d.x, u_input.a.x), true, _wgslsmith_div_vec2_f32(global1.a.b.c, global2.zx), ~vec2<i32>(global1.a.b.a.x, var_1.x)), global1.a.c, !global1.a.d), Struct_3(global1.a.c.a, global1.a)).x);
    var var_3 = var_0.zx;
    let x = u_input.a;
    s_output = StorageBuffer(1u, reverseBits(vec3<i32>(~global1.a.c.a.x, -(~1i), var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 24u)]) * _wgslsmith_f_op_f32(min(global1.c, global3[_wgslsmith_index_u32(var_3.x, 24u)])))))), u_input.c);
}

