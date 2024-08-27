struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

var<private> global1: u32 = 10272u;

var<private> global2: Struct_1;

var<private> global3: array<vec3<bool>, 13>;

var<private> global4: array<u32, 19>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1973f, 1344f, 527f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-960f, global2.c, arg_0.c))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1139f, 679f, arg_0.c) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(2595u, 2u)], global2.c, -935f) - vec3<f32>(-194f, -545f, global2.c))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, 816f, -738f)))))));
    let var_1 = global4[_wgslsmith_index_u32(arg_0.a, 19u)];
    let var_2 = ~max(-1i, countOneBits(~_wgslsmith_clamp_i32(arg_1.x, 2147483647i, -17197i)));
    global0 = array<f32, 2>();
    var var_3 = arg_0;
    return ~(vec3<u32>(61981u, global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(60238u, 1u), 19u)], _wgslsmith_mult_u32(11816u, global4[_wgslsmith_index_u32(22017u, 19u)])) | vec3<u32>(~arg_0.a, 0u, var_3.a));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = arg_3.b.x;
    var var_1 = firstLeadingBit(func_3(Struct_1(0u, arg_3.a, -479f, u_input.b), -select(-vec3<i32>(1i, -2730i, 35195i), vec3<i32>(global2.d.x, -34590i, -1i), false), false));
    let var_2 = 299f;
    let var_3 = arg_0;
    global2 = Struct_1(52701u, (firstTrailingBit(_wgslsmith_dot_vec2_u32(var_3.b, arg_0.b)) ^ 102196u) != _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(arg_1, _wgslsmith_add_vec4_u32(arg_1, arg_1)), _wgslsmith_mult_u32(~arg_0.b.x, arg_1.x ^ arg_3.b.x)), _wgslsmith_f_op_f32(453f - -427f), vec2<i32>(1084i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.d.x, global2.d.x, -29133i), vec3<i32>(global2.d.x, global2.d.x, 31700i)), -9202i, countOneBits(-7644i))) << ((arg_0.b << (arg_3.b % vec2<u32>(32u))) % vec2<u32>(32u)));
    return Struct_1(1138u, global2.b, -1290f, vec2<i32>(~1i, 11421i));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(140f, 721f, -1041f, -2126f), vec4<f32>(1000f, global2.c, global2.c, global2.c), vec4<bool>(arg_0.b, true, global2.b, arg_0.b)))) * vec4<f32>(func_2(Struct_2(global2.b, vec2<u32>(11544u, 0u)), vec4<u32>(global2.a, 1u, 0u, global4[_wgslsmith_index_u32(arg_0.a, 19u)]), global0[_wgslsmith_index_u32(16749u, 2u)], Struct_2(false, vec2<u32>(0u, 22296u))).c, 794f, global2.c, arg_0.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1403f, arg_0.c, -601f, arg_0.c), _wgslsmith_div_vec4_f32(vec4<f32>(global2.c, global0[_wgslsmith_index_u32(global2.a, 2u)], arg_0.c, 539f), vec4<f32>(arg_0.c, global2.c, arg_0.c, -456f))))))));
    var var_1 = 13859u;
    global0 = array<f32, 2>();
    var var_2 = arg_0;
    var var_3 = Struct_2(all(!vec3<bool>(true, arg_0.b, var_2.b)), select(vec2<u32>(~(~0u), abs(_wgslsmith_sub_u32(arg_0.a, var_2.a))), vec2<u32>(1u, arg_0.a), !(global2.b != !arg_0.b)));
    return Struct_1(var_2.a, all(vec2<bool>(any(!global3[_wgslsmith_index_u32(2740u, 13u)]), global2.b)), 1451f, vec2<i32>(-u_input.b.x, reverseBits(-1i)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    let var_0 = select(vec4<bool>(((4294967295u | global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 19u)], 19u)]) | ~arg_1.a) >= ~(35809u << (arg_0.b.x % 32u)), (_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(17852u, 2u)], 1552f)) >= arg_1.c) | !(!global2.b), true, any(vec3<bool>(true, false, func_2(arg_0, vec4<u32>(global4[_wgslsmith_index_u32(global2.a, 19u)], arg_1.a, global4[_wgslsmith_index_u32(4437u, 19u)], global4[_wgslsmith_index_u32(4294967295u, 19u)]), -1047f, Struct_2(arg_1.b, vec2<u32>(arg_0.b.x, 4294967295u))).b))), vec4<bool>(true, !(func_2(arg_0, vec4<u32>(63149u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0.b.x, 19u)], 19u)], 19u)], arg_1.a, 13226u), 260f, Struct_2(global2.b, arg_0.b)).b == true), global2.b, arg_1.b), global2.b);
    let var_1 = func_2(arg_0, countOneBits(~(vec4<u32>(68895u, 0u, global4[_wgslsmith_index_u32(68457u, 19u)], 4294967295u) | vec4<u32>(arg_0.b.x, 27460u, arg_0.b.x, arg_0.b.x))) >> (_wgslsmith_mult_vec4_u32(~(~vec4<u32>(arg_0.b.x, 1u, global4[_wgslsmith_index_u32(global2.a, 19u)], arg_0.b.x)), ~(~vec4<u32>(global4[_wgslsmith_index_u32(global2.a, 19u)], arg_0.b.x, arg_0.b.x, global4[_wgslsmith_index_u32(arg_1.a, 19u)]))) % vec4<u32>(32u)), global0[_wgslsmith_index_u32(global2.a, 2u)], Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(230f)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.c))), vec2<u32>(4294967295u, arg_0.b.x)));
    return 489f;
}

fn func_1(arg_0: bool, arg_1: bool) -> vec4<f32> {
    var var_0 = countOneBits(-u_input.a);
    global4 = array<u32, 19>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1642f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(floor(-874f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(230f)))), global0[_wgslsmith_index_u32(4294967295u, 2u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1311f) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 19u)], 2u)] + global2.c))))));
    global4 = array<u32, 19>();
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_2(true, ~vec2<u32>(73752u, global2.a)), func_4(func_2(Struct_2(true, vec2<u32>(global2.a, global4[_wgslsmith_index_u32(1u, 19u)])), vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], global4[_wgslsmith_index_u32(0u, 19u)], global4[_wgslsmith_index_u32(40326u, 19u)], global2.a), global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(29401u, 19u)], 2u)], Struct_2(arg_1, vec2<u32>(global4[_wgslsmith_index_u32(78897u, 19u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global2.a, 19u)], 19u)], 19u)], 19u)])))))) * 515f), _wgslsmith_div_f32(-2335f, var_1.x), -1199f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - global2.c)), var_1.x));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f + func_4(Struct_1(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(54718u, 19u)], 19u)], 19u)], false, global2.c, u_input.b)).c), _wgslsmith_f_op_f32(global2.c + _wgslsmith_f_op_f32(ceil(869f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global2.c)), _wgslsmith_div_f32(-733f, var_1.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(799f + -1134f), _wgslsmith_f_op_f32(select(global2.c, global0[_wgslsmith_index_u32(0u, 2u)], global2.b)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(267f, 213f, 1391f, global2.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(532f, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 19u)], 2u)], -1340f, var_1.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, global2.c, var_1.x, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 19u)], 2u)]) * vec4<f32>(global0[_wgslsmith_index_u32(global2.a, 2u)], var_1.x, global0[_wgslsmith_index_u32(global2.a, 2u)], global0[_wgslsmith_index_u32(global2.a, 2u)])))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-500f)) * _wgslsmith_f_op_f32(-1010f + var_1.x)), _wgslsmith_f_op_f32(global2.c + -470f), var_1.x, 1402f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c, -790f, -1212f, -429f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_1(global2.b, global2.b)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-2467f, global0[_wgslsmith_index_u32(global2.a, 2u)], global2.c, global0[_wgslsmith_index_u32(4294967295u, 2u)])))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-358f, global2.c, global2.c, global0[_wgslsmith_index_u32(4294967295u, 2u)]))))));
    global1 = global2.a;
    global4 = array<u32, 19>();
    global4 = array<u32, 19>();
    var var_1 = Struct_2(!(!any(select(vec2<bool>(true, global2.b), vec2<bool>(false, false), global2.b))), select(~reverseBits(max(vec2<u32>(global2.a, global2.a), vec2<u32>(global4[_wgslsmith_index_u32(1u, 19u)], 4294967295u))), vec2<u32>(reverseBits(_wgslsmith_div_u32(global2.a, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global2.a, 19u)], 19u)], 19u)])), global4[_wgslsmith_index_u32(1u << (global4[_wgslsmith_index_u32(select(0u, global2.a, true), 19u)] % 32u), 19u)]), select(var_0.x < 417f, !global2.b, !global2.b && true)));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.yyz), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c)) + global2.c), _wgslsmith_f_op_f32(max(func_2(Struct_2(false, vec2<u32>(74267u, 7105u)), abs(vec4<u32>(var_1.b.x, 49358u, global2.a, global2.a)), _wgslsmith_f_op_f32(sign(1254f)), Struct_2(false, var_1.b)).c, _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(9878u, 19u)], 19u)], 2u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(~(-_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -38472i, global2.d.x, u_input.b.x), vec4<i32>(u_input.a, u_input.b.x, -2147483647i, u_input.a))), _wgslsmith_div_vec4_i32(vec4<i32>(~global2.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b.x, global2.d.x), vec3<i32>(global2.d.x, -37564i, u_input.b.x)), -1404i, ~22940i), vec4<i32>(_wgslsmith_mod_i32(2147483647i, u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, u_input.a), vec3<i32>(global2.d.x, 0i, 0i)), _wgslsmith_mod_i32(2825i, -16986i), -27924i))), firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(~0u, global2.a, ~global2.a), vec3<u32>(0u, _wgslsmith_mod_u32(4370u, var_1.b.x), ~1u), firstLeadingBit(vec3<u32>(1u, 0u, 17756u)))), 31018u);
}

