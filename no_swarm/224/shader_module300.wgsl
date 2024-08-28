struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: vec2<i32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(false, true, true, true, false, true, false, false, true, true, false, true, true, false, true, false, true, true, true, true, true);

var<private> global1: array<Struct_2, 8>;

var<private> global2: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(vec3<bool>(false, true, true), 27034i, vec4<i32>(-69782i, 1i, -1i, -87764i), vec4<i32>(-9352i, 38249i, 2147483647i, i32(-2147483648))), Struct_2(vec3<bool>(true, false, false), -10736i, vec4<i32>(-1i, 12278i, 31527i, -24669i), vec4<i32>(i32(-2147483648), 1i, -6976i, -57035i)), Struct_2(vec3<bool>(true, true, false), 6096i, vec4<i32>(58020i, 2147483647i, -21867i, -42435i), vec4<i32>(-1i, 15635i, -57880i, -6970i)), Struct_2(vec3<bool>(false, false, false), -6620i, vec4<i32>(-22599i, 32803i, i32(-2147483648), -15309i), vec4<i32>(-75444i, i32(-2147483648), -1i, 3875i)), Struct_2(vec3<bool>(true, false, true), 18667i, vec4<i32>(-27759i, 26794i, -57148i, 2147483647i), vec4<i32>(1i, -5931i, 42506i, 0i)), Struct_2(vec3<bool>(true, true, false), 2147483647i, vec4<i32>(2147483647i, -11639i, 20478i, 1i), vec4<i32>(-28633i, 38037i, 0i, -20482i)), Struct_2(vec3<bool>(true, false, false), -41226i, vec4<i32>(51684i, 1i, 0i, 0i), vec4<i32>(0i, 1i, 2147483647i, 1i)), Struct_2(vec3<bool>(false, false, false), 35198i, vec4<i32>(-44717i, 15141i, 61015i, -1i), vec4<i32>(1i, -1i, -31667i, -1i)), Struct_2(vec3<bool>(false, false, true), 0i, vec4<i32>(2147483647i, -12660i, -8642i, 2147483647i), vec4<i32>(-15355i, -38563i, -21316i, -28437i)), Struct_2(vec3<bool>(true, true, false), 2147483647i, vec4<i32>(-34254i, -11751i, -1i, -1i), vec4<i32>(2147483647i, 1i, -73775i, 1i)), Struct_2(vec3<bool>(true, false, true), -4767i, vec4<i32>(21557i, -18572i, 22696i, 11480i), vec4<i32>(18662i, 2147483647i, 1i, 0i)), Struct_2(vec3<bool>(true, true, false), 45694i, vec4<i32>(-1i, -1i, i32(-2147483648), -59320i), vec4<i32>(1i, 33777i, -9172i, -22443i)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3) -> vec2<f32> {
    let var_0 = vec4<u32>(max(1u, firstLeadingBit(firstLeadingBit(arg_0.e.c ^ arg_0.c.x))), _wgslsmith_mult_u32(arg_0.c.x, firstLeadingBit(arg_0.c.x)), ~_wgslsmith_dot_vec4_u32(arg_0.c | vec4<u32>(u_input.c.x, 49602u, 45141u, u_input.c.x), _wgslsmith_div_vec4_u32(vec4<u32>(33426u, arg_0.c.x, 1u, arg_2.e.c), arg_2.c)) ^ min(18594u, u_input.d.x), arg_2.c.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1719f)) * 804f);
    var var_2 = global1[_wgslsmith_index_u32(arg_1, 8u)];
    global0 = array<bool, 21>();
    var_2 = arg_2.b;
    return vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_2.d)))) + arg_0.d))), _wgslsmith_f_op_f32(round(arg_2.d)));
}

fn func_2(arg_0: i32) -> i32 {
    global2 = array<Struct_2, 12>();
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_3(2147483647i, Struct_2(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(u_input.d.x, 21u)], false), u_input.b, vec4<i32>(arg_0, arg_0, 5961i, -5381i), vec4<i32>(60279i, 0i, arg_0, u_input.b)), vec4<u32>(u_input.c.x, 0u, u_input.d.x, u_input.c.x), -235f, Struct_1(-2147483647i, vec2<f32>(554f, -1000f), 11834u)), 4294967295u, Struct_3(2147483647i, Struct_2(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 21u)], false, global0[_wgslsmith_index_u32(21136u, 21u)]), 4766i, vec4<i32>(u_input.b, arg_0, arg_0, arg_0), vec4<i32>(arg_0, arg_0, 0i, -16747i)), vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.c.x), 520f, Struct_1(arg_0, vec2<f32>(-1000f, 880f), u_input.c.x))))))), select(false, !all(select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 21u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 21u)], global0[_wgslsmith_index_u32(u_input.d.x, 21u)], global0[_wgslsmith_index_u32(u_input.c.x, 21u)]), vec3<bool>(true, false, global0[_wgslsmith_index_u32(0u, 21u)]))), 406f != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1577f, -1115f, global0[_wgslsmith_index_u32(u_input.d.x, 21u)])), _wgslsmith_f_op_f32(692f * 651f)))), ((vec2<i32>(arg_0, -6646i) ^ vec2<i32>(-2147483647i, 2147483647i)) | vec2<i32>(-1i, _wgslsmith_div_i32(arg_0, -16861i))) ^ vec2<i32>(_wgslsmith_mod_i32(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(34424i, 0i), vec2<i32>(-15225i, 0i))), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, u_input.b, 1i), vec3<i32>(1i, 2147483647i, arg_0)) >> (abs(u_input.c.x) % 32u)), Struct_3(-22011i, global1[_wgslsmith_index_u32(countOneBits(u_input.c.x), 8u)], select(~firstTrailingBit(vec4<u32>(u_input.d.x, u_input.c.x, 23931u, 23297u)), vec4<u32>(u_input.d.x, 4294967295u, u_input.c.x, 4294967295u) ^ vec4<u32>(u_input.c.x, 19501u, u_input.c.x, u_input.c.x), !select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 21u)], global0[_wgslsmith_index_u32(9066u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], false), vec4<bool>(true, true, false, false), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 21u)], true, global0[_wgslsmith_index_u32(0u, 21u)]))), 1031f, Struct_1(-13148i, vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(85092i, global2[_wgslsmith_index_u32(1u, 12u)], vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, u_input.d.x), 435f, Struct_1(u_input.a, vec2<f32>(-322f, 192f), u_input.d.x)), 55639u, Struct_3(11619i, Struct_2(vec3<bool>(global0[_wgslsmith_index_u32(0u, 21u)], true, global0[_wgslsmith_index_u32(4294967295u, 21u)]), 29657i, vec4<i32>(-37273i, arg_0, 1i, 0i), vec4<i32>(arg_0, 24860i, u_input.a, arg_0)), vec4<u32>(u_input.c.x, 46090u, 9880u, 35897u), -478f, Struct_1(u_input.a, vec2<f32>(503f, -586f), u_input.d.x)))).x, 351f), ~_wgslsmith_dot_vec3_u32(u_input.d, u_input.d))));
    global1 = array<Struct_2, 8>();
    global1 = array<Struct_2, 8>();
    global2 = array<Struct_2, 12>();
    return i32(-1i) * -(~(-534i));
}

fn func_1() -> i32 {
    var var_0 = func_2(-u_input.a) >> (u_input.c.x % 32u);
    global1 = array<Struct_2, 8>();
    global1 = array<Struct_2, 8>();
    global0 = array<bool, 21>();
    var var_1 = ~u_input.d.x >> (u_input.c.x % 32u);
    return i32(-1i) * -(~(-2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -553f), _wgslsmith_mod_i32(func_1(), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-1i, u_input.b, u_input.a), u_input.a)) >> (_wgslsmith_dot_vec3_u32(u_input.c, _wgslsmith_mult_vec3_u32(reverseBits(u_input.d), u_input.d)) % 32u));
}

