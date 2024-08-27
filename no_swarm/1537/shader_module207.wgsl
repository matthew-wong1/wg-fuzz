struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22>;

var<private> global1: array<i32, 13>;

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<u32>(1u, 1u, 5190u), -8462i), Struct_1(vec3<u32>(1u, 1u, 32310u), 26100i), Struct_1(vec3<u32>(74541u, 0u, 13334u), 32580i), Struct_1(vec3<u32>(1u, 1u, 1u), 2147483647i), Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u), 1i), Struct_1(vec3<u32>(13247u, 1508u, 0u), -1i), Struct_1(vec3<u32>(1u, 36647u, 35251u), 39455i), Struct_1(vec3<u32>(1u, 35064u, 45054u), i32(-2147483648)), Struct_1(vec3<u32>(0u, 1477u, 97952u), -2307i), Struct_1(vec3<u32>(4294967295u, 1u, 39663u), i32(-2147483648)), Struct_1(vec3<u32>(4294967295u, 17712u, 4294967295u), -49092i), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), -29662i), Struct_1(vec3<u32>(12717u, 22415u, 28147u), 31158i), Struct_1(vec3<u32>(11632u, 1u, 0u), -24661i), Struct_1(vec3<u32>(37567u, 0u, 4294967295u), -14103i), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), 64377i), Struct_1(vec3<u32>(0u, 41062u, 0u), -602i), Struct_1(vec3<u32>(1u, 22484u, 6137u), i32(-2147483648)), Struct_1(vec3<u32>(60571u, 17321u, 18533u), i32(-2147483648)), Struct_1(vec3<u32>(0u, 18299u, 56187u), i32(-2147483648)), Struct_1(vec3<u32>(0u, 0u, 4294967295u), 59830i), Struct_1(vec3<u32>(4616u, 1u, 27943u), -12814i), Struct_1(vec3<u32>(31896u, 4294967295u, 1u), 38852i), Struct_1(vec3<u32>(4294967295u, 0u, 1u), 1i), Struct_1(vec3<u32>(0u, 0u, 1u), 2147483647i), Struct_1(vec3<u32>(1u, 1u, 14752u), 36973i), Struct_1(vec3<u32>(4294967295u, 1u, 20003u), 21524i), Struct_1(vec3<u32>(4294967295u, 3355u, 1u), i32(-2147483648)), Struct_1(vec3<u32>(0u, 69162u, 30974u), 46095i), Struct_1(vec3<u32>(107441u, 1u, 22819u), 26758i), Struct_1(vec3<u32>(25030u, 64747u, 4294967295u), 11813i));

var<private> global3: array<Struct_1, 26>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = 4294967295u;
    var var_1 = vec2<u32>(u_input.d, firstLeadingBit(1u));
    global0 = array<bool, 22>();
    var_0 = var_1.x >> (~(~select(reverseBits(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a), global0[_wgslsmith_index_u32(u_input.d, 22u)] & global0[_wgslsmith_index_u32(u_input.a.x, 22u)])) % 32u);
    let var_2 = global0[_wgslsmith_index_u32(var_1.x, 22u)];
    return global3[_wgslsmith_index_u32(u_input.a.x, 26u)];
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global0 = array<bool, 22>();
    global3 = array<Struct_1, 26>();
    global0 = array<bool, 22>();
    var var_0 = Struct_1(abs(vec3<u32>(4294967295u ^ _wgslsmith_mod_u32(0u, arg_2.a.x), ~(54808u << (1u % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, arg_2.a.x, 1u), arg_0.a))), select(-2147483647i, -arg_0.b, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0.a.x & 22623u, _wgslsmith_mult_u32(0u, arg_2.a.x)), 22u)] && global0[_wgslsmith_index_u32(firstLeadingBit(~0u), 22u)]));
    global0 = array<bool, 22>();
    return Struct_1(arg_2.a, abs(i32(-1i) * -arg_0.b) ^ ~(-24905i));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(u_input.a.x >> (0u % 32u), 26u)];
    var var_1 = func_2(abs(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u | u_input.a.x, 4294967295u, u_input.a.x, _wgslsmith_add_u32(u_input.a.x, var_0.a.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 24306u, u_input.a.x, 0u), vec4<u32>(var_0.a.x, u_input.a.x, u_input.d, u_input.d))), 13u)]));
    global0 = array<bool, 22>();
    let var_2 = false;
    let var_3 = 76018i;
    return func_3(Struct_1(~countOneBits(vec3<u32>(u_input.d, 0u, 501u)), -2147483647i), -53156i, func_2(abs(var_0.b)), arg_0.x);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: bool) -> vec3<u32> {
    let var_0 = ~(~arg_1.a);
    var var_1 = firstLeadingBit(select(~firstTrailingBit(u_input.c.yy), vec2<i32>(1i, countOneBits(u_input.c.x)), arg_2.x) >> (_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 1u) << (var_0.yx % vec2<u32>(32u)), ~vec2<u32>(0u, 0u)), vec2<u32>(0u, arg_1.a.x)) % vec2<u32>(32u)));
    var var_2 = !arg_2;
    var var_3 = _wgslsmith_mult_u32(1u, u_input.a.x);
    var var_4 = global3[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(max(firstTrailingBit(vec4<u32>(var_0.x, 1u, u_input.a.x, var_0.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 1u, var_0.x, var_0.x), vec4<u32>(u_input.a.x, var_0.x, 6486u, 0u))), vec4<u32>(58296u, u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_1.a.x), vec2<u32>(0u, arg_1.a.x)), u_input.a.x))), 26u)];
    return firstTrailingBit(reverseBits(vec3<u32>(var_4.a.x, var_4.a.x, var_4.a.x & 29379u) << ((vec3<u32>(var_4.a.x, 0u, arg_1.a.x) ^ ~vec3<u32>(var_0.x, u_input.d, 4294967295u)) % vec3<u32>(32u))));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: vec3<u32>) -> u32 {
    let var_0 = vec2<i32>(_wgslsmith_mult_i32(-global1[_wgslsmith_index_u32(~(~4294967295u), 13u)], (u_input.c.x >> (~4294967295u % 32u)) | _wgslsmith_sub_i32(u_input.b.x, abs(2147483647i))), u_input.c.x);
    global1 = array<i32, 13>();
    let var_1 = u_input.c.x;
    global0 = array<bool, 22>();
    global2 = array<Struct_1, 31>();
    return _wgslsmith_clamp_u32(arg_3.x, 0u, ~_wgslsmith_div_u32(4294967295u, (1u | arg_0.a.x) | _wgslsmith_add_u32(42465u, 6681u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 13>();
    global0 = array<bool, 22>();
    var var_0 = global2[_wgslsmith_index_u32(func_5(global2[_wgslsmith_index_u32((_wgslsmith_dot_vec3_u32(~vec3<u32>(58969u, 10680u, 75543u), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1858u, u_input.a.x), vec3<u32>(1u, u_input.d, u_input.d))) | u_input.a.x) << (_wgslsmith_div_u32(~u_input.a.x, _wgslsmith_sub_u32(u_input.d, u_input.d)) % 32u), 31u)], all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 22u)], !any(vec3<bool>(true, true, global0[_wgslsmith_index_u32(1u, 22u)])))), u_input.d, ~_wgslsmith_mod_vec3_u32(func_4(47774i, func_1(vec3<f32>(-1241f, 587f, 1000f)), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(0u, 22u)]), vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.d, 22u)]), global0[_wgslsmith_index_u32(4294967295u, 22u)]), true), abs(vec3<u32>(4294967295u, u_input.d, 32933u) >> (vec3<u32>(u_input.d, 1u, 47292u) % vec3<u32>(32u))))), 31u)];
    let var_1 = Struct_1(var_0.a, _wgslsmith_mult_i32(~(-2147483647i), ~0i));
    var var_2 = Struct_1((var_0.a >> (~(~vec3<u32>(55088u, 4294967295u, u_input.d)) % vec3<u32>(32u))) | select(~_wgslsmith_div_vec3_u32(var_1.a, var_1.a), vec3<u32>(var_1.a.x, var_1.a.x, 0u), vec3<bool>(true, true, !global0[_wgslsmith_index_u32(var_0.a.x, 22u)])), -25343i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2931f, -1108f, 985f, -246f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(610f, -1000f, 1930f, 1246f), _wgslsmith_f_op_vec4_f32(vec4<f32>(485f, 1000f, 1147f, -1058f) + vec4<f32>(1478f, -475f, 685f, 1531f)), select(vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(59142u, 22u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(26136u, 22u)], true), vec4<bool>(global0[_wgslsmith_index_u32(var_1.a.x, 22u)], global0[_wgslsmith_index_u32(8795u, 22u)], global0[_wgslsmith_index_u32(4028u, 22u)], false)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1849f, -1000f, -1132f, 1914f), vec4<f32>(-356f, -182f, 650f, 1919f)))))), _wgslsmith_mod_i32(_wgslsmith_sub_i32(i32(-1i) * -1i, i32(-1i) * -9659i), _wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(39766i, u_input.c.x, 0i, 2147483647i), -vec4<i32>(-49115i, global1[_wgslsmith_index_u32(30999u, 13u)], var_2.b, global1[_wgslsmith_index_u32(var_0.a.x, 13u)])), abs(~(-12552i)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-342f, 189f) + vec2<f32>(1249f, -293f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-597f, -133f), vec2<f32>(223f, 414f)) - vec2<f32>(270f, 603f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2448f, -1000f) + vec2<f32>(1000f, -314f)), _wgslsmith_div_vec2_f32(vec2<f32>(349f, 1000f), vec2<f32>(553f, -1244f)))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(523f, 878f)))))), select(vec2<bool>(all(vec2<bool>(global0[_wgslsmith_index_u32(31665u, 22u)], global0[_wgslsmith_index_u32(var_2.a.x, 22u)])), global0[_wgslsmith_index_u32(abs(var_2.a.x), 22u)]), select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.a.x, 22u)]), vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], global0[_wgslsmith_index_u32(var_2.a.x, 22u)])), vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 22u)]), true), !select(vec2<bool>(true, false), vec2<bool>(false, true), global0[_wgslsmith_index_u32(var_0.a.x, 22u)])))), _wgslsmith_f_op_f32(198f * _wgslsmith_f_op_f32(abs(-222f))));
}

