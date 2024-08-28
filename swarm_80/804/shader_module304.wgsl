struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(43876u, 11695u, 0u, 73921u), vec4<u32>(4294967295u, 64387u, 0u, 84726u), vec4<u32>(0u, 0u, 4294967295u, 1u), vec4<u32>(0u, 0u, 4294967295u, 83345u), vec4<u32>(1u, 0u, 39597u, 79310u), vec4<u32>(11481u, 4294967295u, 4294967295u, 0u), vec4<u32>(1u, 12501u, 1u, 61868u), vec4<u32>(23922u, 22429u, 1u, 4294967295u), vec4<u32>(4294967295u, 19465u, 10524u, 37096u), vec4<u32>(4294967295u, 12667u, 0u, 0u), vec4<u32>(6782u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(33923u, 1u, 4294967295u, 19150u), vec4<u32>(52942u, 4294967295u, 1u, 4294967295u), vec4<u32>(0u, 0u, 57921u, 4587u), vec4<u32>(4294967295u, 14428u, 1u, 4294967295u), vec4<u32>(41028u, 17000u, 137u, 28466u), vec4<u32>(37627u, 0u, 4294967295u, 0u), vec4<u32>(33594u, 52622u, 4294967295u, 0u), vec4<u32>(53416u, 48169u, 4294967295u, 1u), vec4<u32>(17675u, 2596u, 14712u, 4294967295u), vec4<u32>(9311u, 1u, 6181u, 12379u), vec4<u32>(1u, 44867u, 1u, 0u), vec4<u32>(10599u, 0u, 4294967295u, 1u), vec4<u32>(1104u, 43200u, 6994u, 0u), vec4<u32>(26219u, 4294967295u, 1831u, 82267u), vec4<u32>(0u, 63729u, 478u, 4294967295u), vec4<u32>(1u, 43882u, 33796u, 71145u), vec4<u32>(1u, 1u, 12750u, 0u), vec4<u32>(4294967295u, 70267u, 1u, 982u), vec4<u32>(5574u, 59155u, 1u, 9051u), vec4<u32>(5145u, 72629u, 0u, 0u), vec4<u32>(44525u, 43186u, 2059u, 0u));

var<private> global1: u32 = 4294967295u;

var<private> global2: array<vec4<i32>, 29>;

var<private> global3: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> vec4<u32> {
    global1 = 9034u;
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-235f, 1872f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -815f), _wgslsmith_f_op_f32(f32(-1f) * -429f)))) - 704f);
    global2 = array<vec4<i32>, 29>();
    global1 = ~(~reverseBits(select(~9722u, 1u, true)));
    global0 = array<vec4<u32>, 32>();
    return ~(global0[_wgslsmith_index_u32(1u, 32u)] >> (~vec4<u32>(1u, 17394u, ~82859u, 1u) % vec4<u32>(32u)));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32) -> Struct_2 {
    let var_0 = vec4<i32>(2147483647i, firstTrailingBit(~(_wgslsmith_mult_i32(u_input.c.x, u_input.a) >> (0u % 32u))), 20001i, ~(_wgslsmith_clamp_i32(countOneBits(u_input.b.x), 9429i, _wgslsmith_sub_i32(u_input.c.x, u_input.b.x)) | firstLeadingBit(-2147483647i)));
    var var_1 = countOneBits(~func_3(reverseBits(abs(vec4<i32>(u_input.b.x, 7529i, var_0.x, -26742i)))));
    let var_2 = vec3<i32>(-1i) * -u_input.c;
    let var_3 = select(var_1.xx, var_1.xz, _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(1u << (var_1.x % 32u), 32u)] | reverseBits(vec4<u32>(var_1.x, var_1.x, var_1.x, 0u)), vec4<u32>(var_1.x, _wgslsmith_mult_u32(var_1.x, var_1.x), var_1.x ^ 51376u, var_1.x)) < max(~_wgslsmith_sub_u32(4294967295u, var_1.x), var_1.x));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -574f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(106f - -1090f)))))));
    return Struct_2(u_input.b.x, Struct_1(firstLeadingBit(~_wgslsmith_add_vec2_u32(var_3, vec2<u32>(68324u, var_3.x))), vec4<bool>(arg_0.x, _wgslsmith_div_i32(u_input.c.x, var_2.x) > u_input.c.x, true, !arg_0.x || true), firstLeadingBit(vec2<i32>(1i, 1i)), any(!vec4<bool>(true, arg_0.x, arg_0.x, true))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = func_2(!(!vec2<bool>(u_input.c.x != u_input.b.x, true)), 435f);
    let var_1 = _wgslsmith_add_u32(1u, var_0.b.a.x);
    var var_2 = 93044i;
    let var_3 = true;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1260f, 1249f, 1000f) - vec3<f32>(-1612f, 1539f, 1601f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-570f, -539f, 1697f) - vec3<f32>(-492f, -1801f, 1221f)))))));
    return var_0.b;
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = arg_0.b;
    global3 = -668f;
    let var_1 = reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.a.x >> (4294967295u % 32u), arg_0.b.a.x, _wgslsmith_mod_u32(4294967295u, arg_0.b.a.x)), abs(countOneBits(vec3<u32>(var_0.a.x, arg_0.b.a.x, var_0.a.x)))));
    global2 = array<vec4<i32>, 29>();
    global3 = 170f;
    return Struct_2(1i, func_2(select(func_2(var_0.b.yy, _wgslsmith_div_f32(-184f, 1087f)).b.b.xy, vec2<bool>(arg_0.b.b.x, arg_0.b.b.x), vec2<bool>(arg_0.b.b.x && true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1433f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(878f + 585f), _wgslsmith_f_op_f32(1741f * -367f))))).b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 0u;
    var var_0 = func_4(Struct_2(~u_input.b.x, func_1(true)));
    global1 = var_0.b.a.x;
    global3 = _wgslsmith_f_op_f32(abs(114f));
    var_0 = func_2(select(!(!func_4(Struct_2(u_input.c.x, Struct_1(var_0.b.a, vec4<bool>(var_0.b.d, var_0.b.b.x, true, false), var_0.b.c, true))).b.b.xx), var_0.b.b.yw, false), _wgslsmith_f_op_f32(abs(-319f)));
    var var_1 = false;
    var var_2 = !(!(!(!select(vec4<bool>(true, var_0.b.d, false, true), vec4<bool>(false, var_0.b.b.x, false, var_0.b.b.x), var_0.b.b.x))));
    let var_3 = Struct_1(vec2<u32>(var_0.b.a.x, ~firstLeadingBit(func_3(vec4<i32>(u_input.b.x, 0i, var_0.b.c.x, var_0.a)).x)), vec4<bool>(func_2(!vec2<bool>(var_0.b.b.x, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-644f - -635f))).b.b.x, true, var_2.x, !var_2.x), vec2<i32>(u_input.a, var_0.a), false);
    let var_4 = firstTrailingBit(countOneBits(~firstTrailingBit(~global2[_wgslsmith_index_u32(var_0.b.a.x, 29u)])));
    let x = u_input.a;
    s_output = StorageBuffer(29473u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-479f, -114f, var_2.x)) * _wgslsmith_f_op_f32(f32(-1f) * -925f)), 295f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1755f, -674f) - _wgslsmith_f_op_f32(step(-2529f, -890f))))));
}

