struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 7> = array<bool, 7>(true, false, true, false, false, false, true);

var<private> global2: Struct_1 = Struct_1(i32(-2147483648));

var<private> global3: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(1687i, 1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 1562i, -1i), vec3<i32>(0i, -7918i, 1i), vec3<i32>(2147483647i, 0i, 48962i), vec3<i32>(34174i, i32(-2147483648), -30940i), vec3<i32>(2147483647i, 644i, -19818i), vec3<i32>(0i, 7577i, -6130i), vec3<i32>(0i, -1i, 1i), vec3<i32>(-66650i, -13031i, -70393i), vec3<i32>(-1i, 11792i, i32(-2147483648)), vec3<i32>(0i, 1i, -1i), vec3<i32>(13024i, i32(-2147483648), 2147483647i), vec3<i32>(-75928i, 722i, 2147483647i), vec3<i32>(-1i, i32(-2147483648), 44715i), vec3<i32>(-31729i, 2147483647i, 2147483647i), vec3<i32>(i32(-2147483648), -5905i, i32(-2147483648)), vec3<i32>(-1i, 27387i, 18935i), vec3<i32>(24852i, 1i, 1i), vec3<i32>(-3749i, 20122i, -1124i), vec3<i32>(-1i, 12239i, 21977i), vec3<i32>(0i, -1211i, -26202i), vec3<i32>(-1i, 0i, -1i), vec3<i32>(i32(-2147483648), -43850i, -1859i), vec3<i32>(21806i, -1i, 10324i), vec3<i32>(42914i, 71858i, -35504i), vec3<i32>(-55521i, -1596i, 1i), vec3<i32>(-21868i, 2147483647i, 51013i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = arg_0;
    let var_1 = false;
    global0 = arg_0;
    global2 = Struct_1(_wgslsmith_dot_vec2_i32(u_input.d, abs(_wgslsmith_clamp_vec2_i32(u_input.d, u_input.d, vec2<i32>(u_input.b, u_input.b)))));
    global3 = array<vec3<i32>, 27>();
    return ~vec2<u32>(_wgslsmith_mod_u32(~u_input.c.x, ~(u_input.c.x & 14665u)), ~(~(~1u)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: Struct_1) -> vec4<u32> {
    global3 = array<vec3<i32>, 27>();
    let var_0 = arg_2;
    var var_1 = countOneBits(func_3(Struct_1(firstTrailingBit(-1i)), var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_0, arg_0, false))), var_0)) >> (vec2<u32>(_wgslsmith_div_u32(~(~u_input.c.x), _wgslsmith_add_u32(func_3(Struct_1(global2.a), -1i, arg_0, Struct_1(7963i)).x, ~0u)), ~_wgslsmith_div_u32(69632u, u_input.c.x | u_input.c.x)) % vec2<u32>(32u));
    global1 = array<bool, 7>();
    global0 = var_0;
    return reverseBits(_wgslsmith_div_vec4_u32(~vec4<u32>(53282u >> (u_input.c.x % 32u), var_1.x, ~11278u, 15709u), firstLeadingBit(~vec4<u32>(64346u, 69759u, 0u, 8016u))));
}

fn func_1() -> Struct_1 {
    var var_0 = 833f;
    let var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 50857u, u_input.c.x, u_input.c.x), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-721f, 1000f, -166f, -730f)), vec4<f32>(-833f, -506f, -943f, -311f), Struct_1(-2147483647i)))), _wgslsmith_clamp_vec2_u32(vec2<u32>(func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(473f, -276f, -182f, 1000f), vec4<f32>(-1324f, -1906f, 1860f, 1445f), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 7u)], global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(1u, 7u)], false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 573f, 1000f, -1000f) - vec4<f32>(-1114f, 547f, 1665f, -868f)), Struct_1(global2.a)).x, _wgslsmith_dot_vec2_u32(u_input.c.zy, _wgslsmith_add_vec2_u32(u_input.c.yy, u_input.c.zy))), _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(u_input.c.x, u_input.c.x) << (u_input.c.xx % vec2<u32>(32u))), u_input.c.xz), min(func_2(vec4<f32>(-1152f, 223f, 2110f, -2272f), vec4<f32>(-185f, 1810f, -571f, 475f), Struct_1(global0.a)).wx ^ vec2<u32>(u_input.c.x, u_input.c.x), ~max(u_input.c.zx, vec2<u32>(0u, 4082u)))));
    global3 = array<vec3<i32>, 27>();
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-2135f, -363f)), _wgslsmith_f_op_f32(abs(1979f))))))));
    let var_3 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_mult_i32(global0.a, ~global2.a), u_input.d.x));
    return Struct_1(min(_wgslsmith_sub_i32(abs(1i), global0.a), 56243i) | _wgslsmith_mult_i32(1i, 57169i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(all(vec4<bool>(all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 7u)], global1[_wgslsmith_index_u32(17085u, 7u)], true)), global1[_wgslsmith_index_u32(u_input.c.x, 7u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), 7u)], !global1[_wgslsmith_index_u32(u_input.c.x, 7u)])), global0.a <= global0.a);
    let var_1 = Struct_1(global2.a & min(~(~global0.a), -u_input.a));
    global2 = func_1();
    global3 = array<vec3<i32>, 27>();
    global3 = array<vec3<i32>, 27>();
    let var_2 = !(!select(!(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 7u)], false, true, true)), select(select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 7u)], var_0.x, true, var_0.x), vec4<bool>(false, true, global1[_wgslsmith_index_u32(4294967295u, 7u)], var_0.x), vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(11149u, 7u)])), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 7u)], global1[_wgslsmith_index_u32(u_input.c.x, 7u)], false, false), vec4<bool>(false, var_0.x, false, false), vec4<bool>(global1[_wgslsmith_index_u32(51089u, 7u)], var_0.x, false, true)), !vec4<bool>(false, false, false, var_0.x)), var_0.x));
    global3 = array<vec3<i32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(37902i, global2.a, u_input.b)), global3[_wgslsmith_index_u32(u_input.c.x, 27u)]), select(vec3<i32>(1i, u_input.e, 30379i), global3[_wgslsmith_index_u32(~82716u, 27u)], vec3<bool>(var_2.x, var_2.x, true)), !select(vec3<bool>(var_0.x, global1[_wgslsmith_index_u32(24199u, 7u)], false), var_2.zwz, vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 7u)], false, var_2.x))) >> (~vec3<u32>(abs(u_input.c.x), max(1u, 54342u), 1u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1229f + _wgslsmith_f_op_f32(f32(-1f) * -160f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(134f * -1782f)) + -1000f), vec2<f32>(-1646f, _wgslsmith_f_op_f32(trunc(1159f))), vec2<u32>(~(u_input.c.x >> (u_input.c.x % 32u)), ~min(u_input.c.x, 1u)) & vec2<u32>(firstTrailingBit(firstTrailingBit(u_input.c.x)), func_2(vec4<f32>(1000f, -1000f, 1499f, 1153f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(388f, -960f, 214f, 791f))), var_1).x));
}

