struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(1649f, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(575f, vec2<i32>(43551i, -5115i)), Struct_1(684f, vec2<i32>(-67567i, 12604i)), Struct_1(-754f, vec2<i32>(4115i, 1i)), Struct_1(336f, vec2<i32>(2147483647i, -8599i)), Struct_1(-2771f, vec2<i32>(-22611i, -1i)), Struct_1(-811f, vec2<i32>(0i, -19086i)), Struct_1(2227f, vec2<i32>(-29982i, -3304i)), Struct_1(-783f, vec2<i32>(0i, 7919i)), Struct_1(475f, vec2<i32>(37079i, -2866i)), Struct_1(2170f, vec2<i32>(7469i, 73037i)), Struct_1(-1537f, vec2<i32>(4675i, -21762i)), Struct_1(370f, vec2<i32>(-30178i, 69134i)), Struct_1(700f, vec2<i32>(15029i, -13900i)), Struct_1(-1770f, vec2<i32>(13340i, 2147483647i)), Struct_1(-786f, vec2<i32>(2147483647i, -53549i)), Struct_1(-1000f, vec2<i32>(-1i, i32(-2147483648))), Struct_1(762f, vec2<i32>(i32(-2147483648), -26528i)), Struct_1(-860f, vec2<i32>(-1590i, -25839i)), Struct_1(193f, vec2<i32>(1i, -6033i)), Struct_1(655f, vec2<i32>(1i, 49652i)), Struct_1(1314f, vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(577f, vec2<i32>(1i, 2147483647i)), Struct_1(-2772f, vec2<i32>(55185i, 1i)), Struct_1(969f, vec2<i32>(41378i, 54137i)), Struct_1(425f, vec2<i32>(-15427i, i32(-2147483648))), Struct_1(-1278f, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(633f, vec2<i32>(93745i, -1i)), Struct_1(-280f, vec2<i32>(-68829i, -41179i)), Struct_1(412f, vec2<i32>(1i, 41415i)), Struct_1(-2095f, vec2<i32>(27292i, 1i)));

var<private> global1: Struct_1 = Struct_1(311f, vec2<i32>(-6371i, 16256i));

var<private> global2: array<bool, 24> = array<bool, 24>(true, true, true, true, true, false, true, false, true, true, false, true, true, false, true, false, true, true, true, true, false, true, true, true);

var<private> global3: vec4<u32> = vec4<u32>(27u, 105995u, 0u, 26363u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>) -> u32 {
    global3 = vec4<u32>(abs(_wgslsmith_dot_vec2_u32(~select(global3.yx, vec2<u32>(0u, 4294967295u), vec2<bool>(global2[_wgslsmith_index_u32(37311u, 24u)], false)), min(vec2<u32>(43324u, 0u), vec2<u32>(global3.x, 17784u)))), 12282u, 1u, max(u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x ^ 4294967295u, countOneBits(global3.x), _wgslsmith_mod_u32(global3.x, 16539u), global3.x), vec4<u32>(4294967295u, global3.x, 1u, global3.x) ^ vec4<u32>(4294967295u, global3.x, 4294967295u, 0u))));
    global1 = Struct_1(_wgslsmith_f_op_f32(-arg_1.x), reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, -51068i) ^ (global1.b | global1.b), -select(vec2<i32>(-1747i, global1.b.x), vec2<i32>(0i, 2147483647i), vec2<bool>(true, arg_0)))));
    let var_0 = ~(-vec4<i32>(5302i, ~(-u_input.e), ~20189i, _wgslsmith_clamp_i32(global1.b.x, i32(-1i) * -13834i, u_input.c)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-global1.a), -var_0.wx);
    global0 = array<Struct_1, 31>();
    return _wgslsmith_clamp_u32(~global3.x, _wgslsmith_mult_u32(66661u, min(_wgslsmith_mod_u32(8419u, u_input.b.x), ~_wgslsmith_div_u32(u_input.d.x, 4294967295u))), ~1u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(min(_wgslsmith_add_u32(global3.x >> (func_3(false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_1.a, -362f, global1.a))) % 32u), _wgslsmith_dot_vec2_u32(abs(~vec2<u32>(global3.x, 0u)), vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.b.www, vec3<u32>(84343u, global3.x, arg_2)), 11753u))), _wgslsmith_add_u32(arg_2, 2735u)), 31u)];
    let var_1 = arg_1.b.x ^ -26910i;
    var var_2 = select(vec3<bool>(global2[_wgslsmith_index_u32(reverseBits(7140u), 24u)], global2[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global3.x, 29183u, global3.x)), u_input.d.xxy << (vec3<u32>(u_input.d.x, global3.x, 58233u) % vec3<u32>(32u))), abs(countOneBits(global3.x)), global2[_wgslsmith_index_u32(~global3.x, 24u)]), 24u)], global2[_wgslsmith_index_u32(128237u, 24u)]), !(!(!select(vec3<bool>(global2[_wgslsmith_index_u32(37511u, 24u)], false, false), vec3<bool>(global2[_wgslsmith_index_u32(2682u, 24u)], global2[_wgslsmith_index_u32(global3.x, 24u)], global2[_wgslsmith_index_u32(global3.x, 24u)]), global2[_wgslsmith_index_u32(u_input.b.x, 24u)]))), select(select(!(!vec3<bool>(global2[_wgslsmith_index_u32(global3.x, 24u)], false, global2[_wgslsmith_index_u32(4294967295u, 24u)])), !vec3<bool>(true, false, global2[_wgslsmith_index_u32(0u, 24u)]), arg_0.a < -594f), !(!(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 24u)], false, true))), !vec3<bool>(all(vec4<bool>(global2[_wgslsmith_index_u32(global3.x, 24u)], false, global2[_wgslsmith_index_u32(global3.x, 24u)], global2[_wgslsmith_index_u32(72374u, 24u)])), global2[_wgslsmith_index_u32(func_3(global2[_wgslsmith_index_u32(u_input.d.x, 24u)], vec4<f32>(1626f, -306f, arg_0.a, var_0.a)), 24u)], any(vec2<bool>(global2[_wgslsmith_index_u32(39399u, 24u)], true)))));
    var var_3 = vec3<i32>(global1.b.x, -2147483647i, ~abs(1i));
    global3 = countOneBits(~u_input.d);
    return any(select(!select(select(vec4<bool>(true, var_2.x, var_2.x, true), vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(global3.x, 24u)]), vec4<bool>(global2[_wgslsmith_index_u32(arg_2, 24u)], var_2.x, var_2.x, true)), !vec4<bool>(false, var_2.x, var_2.x, global2[_wgslsmith_index_u32(global3.x, 24u)]), any(var_2.zx)), vec4<bool>(false, all(vec3<bool>(var_2.x, false, true)) | all(vec3<bool>(false, false, false)), all(vec4<bool>(false, true, var_2.x, var_2.x)), reverseBits(var_3.x) >= -12756i), select(select(select(vec4<bool>(global2[_wgslsmith_index_u32(12006u, 24u)], true, global2[_wgslsmith_index_u32(global3.x, 24u)], global2[_wgslsmith_index_u32(arg_2, 24u)]), vec4<bool>(var_2.x, global2[_wgslsmith_index_u32(u_input.d.x, 24u)], global2[_wgslsmith_index_u32(global3.x, 24u)], false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 24u)], var_2.x, true, var_2.x)), select(vec4<bool>(false, false, var_2.x, false), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)], false), vec4<bool>(true, global2[_wgslsmith_index_u32(global3.x, 24u)], var_2.x, global2[_wgslsmith_index_u32(4294967295u, 24u)])), var_2.x), select(vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(arg_2, 24u)]), select(vec4<bool>(var_2.x, true, global2[_wgslsmith_index_u32(4294967295u, 24u)], var_2.x), vec4<bool>(true, global2[_wgslsmith_index_u32(15639u, 24u)], var_2.x, var_2.x), vec4<bool>(true, false, global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(59438u, 24u)])), vec4<bool>(global2[_wgslsmith_index_u32(35333u, 24u)], var_2.x, var_2.x, global2[_wgslsmith_index_u32(6472u, 24u)])), true)));
}

fn func_1() -> bool {
    var var_0 = global2[_wgslsmith_index_u32(~global3.x, 24u)];
    global1 = global0[_wgslsmith_index_u32(~1u, 31u)];
    var var_1 = min(abs(global3.x), ~u_input.d.x);
    return func_2(Struct_1(-1223f, _wgslsmith_sub_vec2_i32(global1.b, -firstTrailingBit(global1.b))), Struct_1(550f, firstTrailingBit(global1.b)), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_1() != (true & global2[_wgslsmith_index_u32(select(countOneBits(4294967295u), firstLeadingBit(1u), true) & ~max(4294967295u, global3.x), 24u)]);
    global3 = u_input.b;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1790f, global1.a)) + 226f))), vec2<i32>(firstTrailingBit(-global1.b.x) & (abs(u_input.a) ^ _wgslsmith_clamp_i32(-27913i, u_input.a, -1i)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(-1i, 20953i), ~(u_input.c >> (u_input.b.x % 32u)))));
    global2 = array<bool, 24>();
    global2 = array<bool, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~u_input.a, -2147483647i, -_wgslsmith_mult_i32(1i, -1i) << ((abs(global3.x) >> (~global3.x % 32u)) % 32u), ~(~(~1i))), -(~max(-global1.b.x, _wgslsmith_clamp_i32(-20982i, var_1.b.x, -9060i))), vec3<f32>(-171f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-483f)) - 1000f), _wgslsmith_f_op_f32(ceil(var_1.a))), 1i);
}

