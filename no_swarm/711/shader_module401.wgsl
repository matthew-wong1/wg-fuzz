struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: u32;

var<private> global1: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(63i), Struct_2(-64666i), Struct_2(2147483647i), Struct_2(0i), Struct_2(2147483647i), Struct_2(2147483647i), Struct_2(-22446i), Struct_2(-16427i));

var<private> global2: array<u32, 29> = array<u32, 29>(16569u, 45801u, 32043u, 0u, 1u, 4294967295u, 1u, 4294967295u, 1u, 60637u, 4294967295u, 51138u, 0u, 62414u, 12954u, 4294967295u, 4294967295u, 4294967295u, 74473u, 57322u, 0u, 26826u, 20350u, 455u, 4294967295u, 1u, 2058u, 39325u, 4294967295u);

var<private> global3: vec4<i32> = vec4<i32>(-11789i, 43275i, i32(-2147483648), i32(-2147483648));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: f32, arg_3: vec3<u32>) -> u32 {
    global1 = array<Struct_2, 8>();
    let var_0 = global3.yzw;
    global2 = array<u32, 29>();
    global0 = _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(u_input.a, 29u)], ~arg_3.x >> (~(~u_input.a) % 32u)) & ~9131u;
    return _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(arg_3.zz, _wgslsmith_mult_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 29u)], 4294967295u) << (arg_1.zz % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), arg_3.xz))), reverseBits(_wgslsmith_add_vec2_u32(~arg_1.wy, firstTrailingBit(vec2<u32>(4294967295u, 4294967295u))))), firstTrailingBit(~global2[_wgslsmith_index_u32(~54553u, 29u)]));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> Struct_1 {
    global1 = array<Struct_2, 8>();
    global1 = array<Struct_2, 8>();
    global2 = array<u32, 29>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-659f + _wgslsmith_f_op_f32(floor(-1134f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2250f, 247f, arg_1)) - _wgslsmith_f_op_f32(f32(-1f) * -1519f)))), any(select(!select(vec3<bool>(arg_1, true, true), vec3<bool>(false, true, false), false), select(vec3<bool>(false, false, arg_1), vec3<bool>(false, arg_1, arg_1), !vec3<bool>(arg_1, true, arg_1)), !(!vec3<bool>(arg_1, true, false)))), func_3(_wgslsmith_f_op_f32(f32(-1f) * -1133f), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(26068u, 58984u, u_input.a, 50330u), vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(4294967295u, 29u)], global2[_wgslsmith_index_u32(0u, 29u)], u_input.a)) << ((vec4<u32>(48635u, 373u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17530u, 29u)], 29u)], u_input.a) | vec4<u32>(4294967295u, u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 29u)], 29u)], global2[_wgslsmith_index_u32(1u, 29u)])) % vec4<u32>(32u)), min(~vec4<u32>(33349u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(63676u, 29u)], 29u)], 4294967295u, 16171u), ~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(49934u, 29u)], 29u)], 4294967295u, u_input.a, global2[_wgslsmith_index_u32(u_input.a, 29u)]))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-112f)) * _wgslsmith_f_op_f32(max(-888f, -2198f))), 1153f)), ~vec3<u32>(1u, global2[_wgslsmith_index_u32(0u, 29u)] >> (u_input.a % 32u), 1u)), _wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(-vec4<i32>(arg_0.a, arg_0.a, -1i, arg_0.a), -vec4<i32>(-2147483647i, -1i, 0i, arg_0.a)), vec4<i32>(~(-19128i), _wgslsmith_clamp_i32(-23826i, global3.x, global3.x), arg_0.a, _wgslsmith_mult_i32(-11991i, 2319i)) | -(~vec4<i32>(global3.x, -49797i, -22617i, arg_2))));
    var var_1 = vec4<bool>(true, true, all(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(arg_1, var_0.b, var_0.b), vec3<bool>(true, true, arg_1)), any(vec3<bool>(false, false, true))), vec3<bool>(var_0.b, true, arg_1 == false), select(all(vec2<bool>(var_0.b, var_0.b)), true, true))), any(!select(vec4<bool>(var_0.b, false, false, var_0.b), !vec4<bool>(false, false, arg_1, var_0.b), !vec4<bool>(true, false, false, arg_1))));
    return Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a)) * _wgslsmith_f_op_f32(f32(-1f) * -310f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))))), any(select(select(vec4<bool>(var_0.b, arg_1, true, arg_1), !vec4<bool>(true, false, true, var_1.x), var_0.a > 139f), !select(vec4<bool>(false, var_1.x, false, arg_1), vec4<bool>(arg_1, var_0.b, arg_1, false), arg_1), true)), 28593u, 10017i);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> bool {
    global0 = ~countOneBits(87092u);
    var var_0 = !(!(!arg_0.x));
    let var_1 = func_2(Struct_2(8582i), true, abs(~(-1i)));
    var var_2 = !arg_0.x;
    var var_3 = select(!((var_1.d & 14012i) < min(-65613i, arg_1.d)), !(!(!arg_1.b)), any(vec2<bool>(arg_1.b, var_1.b))) | !arg_0.x;
    return _wgslsmith_add_u32(23772u, arg_1.c) != _wgslsmith_mod_u32(_wgslsmith_div_u32(1u & arg_1.c, ~_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(1u, 29u)], 1u)), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-1000f, all(!vec3<bool>(true, func_1(vec2<bool>(false, false), Struct_1(362f, true, u_input.a, 49439i)), true)), ~20442u, global3.x);
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, global2[_wgslsmith_index_u32(u_input.a, 29u)], 0u), abs(vec3<u32>(u_input.a, 4294967295u, 0u)) & _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 1u, 4294967295u), vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.a, 29u)], 4294967295u))) >> (u_input.a % 32u), 19248u), 8u)];
    global3 = vec4<i32>(_wgslsmith_add_i32(var_1.a, ~3215i), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, _wgslsmith_mod_i32(global3.x, -3781i), global3.x), ~(~vec3<i32>(2147483647i, 30365i, 8180i))), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), _wgslsmith_sub_vec2_i32(global3.xy, vec2<i32>(2147483647i, var_1.a))), func_2(Struct_2(global3.x), true, global3.x).d)), _wgslsmith_mult_i32(9069i, global3.x), -2147483647i);
    var var_2 = (var_0.b && all(!vec4<bool>(false, var_0.b, false, true))) | true;
    var_2 = false;
    let var_3 = Struct_1(-1407f, false, 0u, abs(abs(var_1.a)));
    var var_4 = ~vec4<u32>(firstLeadingBit(_wgslsmith_mult_u32(var_0.c, _wgslsmith_sub_u32(var_3.c, 0u))), _wgslsmith_mult_u32(1u, ~_wgslsmith_mult_u32(var_3.c, var_3.c)), ~_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~u_input.a, 29u)], 29u)], 61014u), min(~abs(u_input.a), _wgslsmith_mod_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 29u)], 29u)], abs(var_3.c))));
    let var_5 = Struct_1(var_3.a, false, func_2(Struct_2(var_0.d), !var_0.b, _wgslsmith_sub_i32(firstTrailingBit(-1i), _wgslsmith_mult_i32(-1i, var_1.a) ^ 25495i)).c, global3.x ^ _wgslsmith_mod_i32(func_2(global1[_wgslsmith_index_u32(var_4.x, 8u)], var_0.b, var_3.d).d, global3.x));
    let x = u_input.a;
    s_output = StorageBuffer(-1966f, ~(-2147483647i));
}

