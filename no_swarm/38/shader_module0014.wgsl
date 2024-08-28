struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(true, false, true, true, false, true, true, true, false, true, true, true, false, false, false);

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec3<i32>(-10390i, -1i, 0i), true, vec2<f32>(-2490f, -246f), vec2<i32>(-1912i, 0i)), Struct_1(vec3<i32>(-1i, -63589i, -13310i), false, vec2<f32>(-395f, 1467f), vec2<i32>(-1i, i32(-2147483648))), Struct_1(vec3<i32>(0i, 0i, 22851i), false, vec2<f32>(1000f, -1756f), vec2<i32>(-1i, 4848i)));

var<private> global2: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(0u), Struct_2(0u), Struct_2(1u), Struct_2(9921u), Struct_2(23428u), Struct_2(36547u), Struct_2(40989u), Struct_2(0u), Struct_2(1u), Struct_2(4294967295u), Struct_2(0u), Struct_2(20207u), Struct_2(0u), Struct_2(1u), Struct_2(0u), Struct_2(0u), Struct_2(0u), Struct_2(37151u), Struct_2(4294967295u), Struct_2(15155u), Struct_2(4294967295u), Struct_2(1u), Struct_2(1u), Struct_2(199u), Struct_2(4419u), Struct_2(34543u), Struct_2(4294967295u), Struct_2(4294967295u), Struct_2(1u), Struct_2(97971u), Struct_2(6091u), Struct_2(20100u));

var<private> global3: array<Struct_2, 9>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec2<bool>, arg_3: bool) -> i32 {
    global0 = array<bool, 15>();
    global0 = array<bool, 15>();
    var var_0 = 603u;
    global2 = array<Struct_2, 32>();
    return _wgslsmith_clamp_i32(u_input.a.x, i32(-1i) * -(arg_0.d.x ^ u_input.a.x), -(~_wgslsmith_dot_vec3_i32(vec3<i32>(14005i, -2147483647i, arg_0.d.x), vec3<i32>(20626i, -2147483647i, 2147483647i))));
}

fn func_3() -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 3u)];
    var var_1 = var_0.c;
    var_0 = global1[_wgslsmith_index_u32(29514u, 3u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-446f, -1046f, var_1.x, -1373f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.c.x, var_0.c.x, -1000f, var_0.c.x)))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(2710f * var_1.x), 1000f, var_0.c.x, -2645f) - vec4<f32>(-605f, _wgslsmith_f_op_f32(-var_1.x), -918f, _wgslsmith_f_op_f32(exp2(var_1.x))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-178f, _wgslsmith_f_op_f32(ceil(-2121f)), var_2.x, -498f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(630f, var_1.x, 639f, var_0.c.x) - vec4<f32>(var_0.c.x, 1000f, var_0.c.x, 1067f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-126f, -814f, -1000f, -449f), vec4<f32>(-245f, var_0.c.x, 361f, -1629f))))));
    return var_0.d.x;
}

fn func_1(arg_0: vec2<i32>) -> vec3<bool> {
    var var_0 = !(!vec4<bool>(false, func_2(global1[_wgslsmith_index_u32(4294967295u, 3u)], arg_0.x, vec2<bool>(false, global0[_wgslsmith_index_u32(117166u, 15u)]), true) != func_3(), global0[_wgslsmith_index_u32(~1u, 15u)], true));
    var var_1 = vec4<i32>(-1i) * -max(~reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, -1i, -1i)), (vec4<i32>(u_input.a.x, arg_0.x, arg_0.x, 1i) << (vec4<u32>(4294967295u, 1u, 0u, 4294967295u) % vec4<u32>(32u))) ^ -vec4<i32>(-9281i, arg_0.x, u_input.a.x, arg_0.x));
    let var_2 = Struct_3(global2[_wgslsmith_index_u32(0u, 32u)], ~(~select(reverseBits(0u), min(1u, 16811u), !var_0.x)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(~7618u), 0u), 32u)], func_2(Struct_1(vec3<i32>(var_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -6985i, -12035i), vec3<i32>(-1i, -2147483647i, u_input.a.x)), -25115i), true, vec2<f32>(_wgslsmith_f_op_f32(-1000f * 1295f), _wgslsmith_f_op_f32(f32(-1f) * -463f)), u_input.a.yy), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a.x, abs(2147483647i)), firstTrailingBit(min(arg_0.x, -29363i))), vec2<bool>(arg_0.x > arg_0.x, all(vec2<bool>(var_0.x, false))), all(select(select(vec4<bool>(global0[_wgslsmith_index_u32(36425u, 15u)], true, true, global0[_wgslsmith_index_u32(0u, 15u)]), vec4<bool>(var_0.x, var_0.x, global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(24467u, 15u)]), true), vec4<bool>(true, var_0.x, true, global0[_wgslsmith_index_u32(68650u, 15u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], false, false, var_0.x)))));
    var var_3 = Struct_3(Struct_2(var_2.b), 4294967295u, Struct_2(1u), firstLeadingBit(var_2.d));
    var var_4 = Struct_2(_wgslsmith_mod_u32(countOneBits(var_3.b << ((var_3.c.a >> (29948u % 32u)) % 32u)), var_3.b ^ _wgslsmith_mult_u32(1u, 33387u)));
    return var_0.ywz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!select(!vec3<bool>(global0[_wgslsmith_index_u32(39640u, 15u)], global0[_wgslsmith_index_u32(34780u, 15u)], false), func_1(vec2<i32>(u_input.a.x, 8077i)), vec3<bool>(true, false, true))) != global0[_wgslsmith_index_u32(~1u, 15u)];
    var_0 = true;
    let var_1 = vec2<i32>(_wgslsmith_sub_i32(~(~(i32(-1i) * -34064i)), _wgslsmith_dot_vec3_i32(abs(u_input.a), u_input.a) << (_wgslsmith_mod_u32(~1u, 1u) % 32u)), -1i);
    let var_2 = vec2<u32>(50848u, 1u);
    let var_3 = -(~_wgslsmith_dot_vec2_i32(u_input.a.xx, var_1));
    global3 = array<Struct_2, 9>();
    var var_4 = vec4<i32>(-1i) * -select(vec4<i32>(~var_1.x, u_input.a.x ^ -19444i, 16882i, min(var_1.x, -2147483647i)), vec4<i32>(var_3, -16737i, -9151i, var_1.x) | firstLeadingBit(vec4<i32>(46545i, u_input.a.x, var_3, var_1.x)), select(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(var_2.x, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], true), !vec4<bool>(false, global0[_wgslsmith_index_u32(var_2.x, 15u)], true, false), select(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 15u)], true, global0[_wgslsmith_index_u32(var_2.x, 15u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_2.x, 15u)], false, false, false), global0[_wgslsmith_index_u32(4294967295u, 15u)])));
    let var_5 = _wgslsmith_mod_vec3_u32(min(_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(1u, var_2.x, var_2.x)), vec3<u32>(var_2.x, var_2.x, var_2.x) >> (vec3<u32>(15693u, var_2.x, var_2.x) % vec3<u32>(32u))), vec3<u32>(var_2.x ^ var_2.x, _wgslsmith_div_u32(4294967295u, var_2.x), var_2.x)) & ~(~vec3<u32>(0u, 4167u, var_2.x) >> (vec3<u32>(var_2.x, 22266u, 43766u) % vec3<u32>(32u))), ~(~vec3<u32>(89803u, 12148u, var_2.x) & vec3<u32>(4294967295u, 1u, var_2.x)) | vec3<u32>(~(~67169u), ~var_2.x, 68893u | var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_sub_i32(_wgslsmith_div_i32(var_4.x, _wgslsmith_dot_vec3_i32(var_4.xzx, vec3<i32>(-11278i, -2147483647i, -44041i))), i32(-1i) * -1i), 2147483647i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1025f), -332f)) * _wgslsmith_f_op_f32(abs(603f))), _wgslsmith_f_op_f32(max(1224f, 1f)))), -34704i);
}

