struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, -6960i, 2298i);

var<private> global1: vec2<f32>;

var<private> global2: vec3<u32>;

var<private> global3: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(i32(-2147483648), vec3<bool>(true, true, false), -275f), Struct_1(0i, vec3<bool>(false, false, false), 278f), Struct_1(39388i, vec3<bool>(true, true, true), 1407f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32, arg_1: bool) -> vec4<u32> {
    global3 = array<Struct_1, 3>();
    let var_0 = Struct_1(_wgslsmith_mod_i32(~global0.x, i32(-1i) * -2147483647i), vec3<bool>(arg_1, all(!select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1))), all(!vec3<bool>(true, true, arg_1))), 675f);
    let var_1 = Struct_2(reverseBits(global0.yz), !vec4<bool>(true, var_0.b.x, false, var_0.b.x));
    var var_2 = select(!(!select(select(var_1.b.wx, vec2<bool>(var_1.b.x, false), arg_1), select(vec2<bool>(false, var_1.b.x), vec2<bool>(var_1.b.x, false), vec2<bool>(arg_1, true)), select(vec2<bool>(true, false), vec2<bool>(var_0.b.x, false), var_1.b.x))), select(!(!var_1.b.wz), vec2<bool>(!any(var_0.b.xy), any(var_1.b)), false), var_1.b.yz);
    global2 = abs(vec3<u32>(4294967295u, select(_wgslsmith_add_u32(_wgslsmith_add_u32(global2.x, u_input.a), u_input.a), ~(4294967295u << (0u % 32u)), select(true, any(vec4<bool>(arg_1, false, arg_1, arg_1)), false)), max(1u, min(77729u, _wgslsmith_dot_vec2_u32(global2.zz, global2.yz)))));
    return vec4<u32>(~global2.x, abs(_wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(global2.x, global2.x)), abs(~u_input.b))), _wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(~global2.x, 1u), 555u), _wgslsmith_clamp_u32(global2.x, _wgslsmith_mod_u32(u_input.a & 5560u, 73572u), global2.x)), ~u_input.a);
}

fn func_2() -> Struct_1 {
    var var_0 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(0u, 4294967295u, 4294967295u, 26130u)), reverseBits(vec4<u32>(global2.x, 39051u, global2.x, 12002u) & vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u))), vec4<u32>(_wgslsmith_mod_u32(u_input.a, 37082u), ~u_input.e, u_input.a, ~u_input.b.x) << (func_3(u_input.d.x, any(vec2<bool>(true, false))) % vec4<u32>(32u)));
    return Struct_1(~_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(global0.xz, vec2<i32>(global0.x, u_input.c.x)), -1291i, -u_input.c.x), ~vec3<i32>(u_input.c.x, 0i, -31750i) ^ firstLeadingBit(vec3<i32>(2147483647i, u_input.c.x, global0.x))), vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true))), any(vec4<bool>(global0.x < 0i, true, true, false)), all(vec2<bool>(true, true))), global1.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: bool) -> bool {
    var var_0 = -2228f;
    let var_1 = Struct_1(1i, select(func_2().b, select(select(vec3<bool>(arg_3, arg_3, false), func_2().b, !vec3<bool>(arg_3, true, true)), vec3<bool>(any(vec4<bool>(arg_3, arg_0.b.x, arg_0.b.x, false)), any(vec2<bool>(arg_0.b.x, false)), true), true), all(select(func_2().b, select(vec3<bool>(arg_2.b.x, arg_3, true), arg_0.b, arg_0.b), global2.x <= 4294967295u))), arg_0.c);
    let var_2 = global0.x;
    let var_3 = select(u_input.d << (u_input.b % vec2<u32>(32u)), vec2<i32>(arg_0.a, -_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(arg_1, arg_1, arg_1), vec4<i32>(global0.x, arg_0.a, 2147483647i, -20877i))), false);
    let var_4 = vec4<u32>(reverseBits(~1u), u_input.a, 1u, ~u_input.b.x);
    return !(!(!any(select(vec4<bool>(false, false, var_1.b.x, arg_3), vec4<bool>(arg_0.b.x, arg_2.b.x, true, true), vec4<bool>(true, false, arg_3, false)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> Struct_1 {
    global3 = array<Struct_1, 3>();
    var var_0 = true || func_4(global3[_wgslsmith_index_u32(abs(~_wgslsmith_div_u32(52515u, 73171u)), 3u)], vec4<i32>(_wgslsmith_mod_i32(arg_0.x, 0i) << (_wgslsmith_mult_u32(0u, 1u) % 32u), 34637i, -23028i, global0.x), func_2(), true);
    let var_1 = !vec2<bool>(select(arg_1, !(arg_1 | false), 2147483647i == countOneBits(global0.x)), !func_2().b.x);
    let var_2 = func_2();
    var var_3 = global3[_wgslsmith_index_u32(func_3(min(~_wgslsmith_sub_i32(global0.x, u_input.c.x) | (_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a, arg_0.x, arg_0.x, 1i), vec4<i32>(u_input.c.x, 0i, u_input.d.x, 1i)) << (_wgslsmith_sub_u32(90935u, 11999u) % 32u)), 10881i), arg_1).x, 3u)];
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = vec3<bool>(arg_0.b.x & (~arg_2.a <= -48452i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.c, -822f)) * arg_2.c) != arg_0.c, !arg_1);
    let var_1 = vec2<bool>(var_0.x | arg_0.b.x, var_0.x);
    global3 = array<Struct_1, 3>();
    global3 = array<Struct_1, 3>();
    global3 = array<Struct_1, 3>();
    return firstLeadingBit(vec3<u32>(~(~u_input.a), _wgslsmith_mult_u32(2894u, 96735u), 11062u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(_wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(4294967295u, 22596u, global2.x)), select(vec3<u32>(u_input.e, 4294967295u, global2.x), vec3<u32>(global2.x, u_input.a, 36677u), true))), (vec3<u32>(0u, 88704u, 0u) >> (max(vec3<u32>(3573u, 0u, 4294967295u), vec3<u32>(7433u, global2.x, global2.x)) % vec3<u32>(32u))) & func_5(Struct_1(-1i, vec3<bool>(false, true, true), global1.x), true, func_1(global0.zy, true))) | ~(_wgslsmith_add_u32(75206u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.e, 0u, u_input.b.x), vec4<u32>(4294967295u, 1u, global2.x, 33829u))) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(36066u, 4512u), vec2<u32>(global2.x, 2644u)), vec2<u32>(global2.x, 25535u) & global2.yy) % 32u)), 3u)];
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(floor(-1000f)), 277f), vec2<f32>(2255f, 1358f), false)));
    var var_1 = firstLeadingBit(global0.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, 1f)) + vec2<f32>(-921f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(-var_0.c)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(724f)), _wgslsmith_f_op_f32(f32(-1f) * -1262f)) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, 912f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1356f, var_0.c))))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1037f, func_2().c)))));
    global1 = _wgslsmith_f_op_vec2_f32(step(var_3, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3 + vec2<f32>(555f, -147f))))));
    let var_4 = -56837i;
    let x = u_input.a;
    s_output = StorageBuffer(~(~global2.yz), vec2<u32>(_wgslsmith_clamp_u32(u_input.a, _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.e, 4294967295u, 23320u, u_input.e), vec4<u32>(global2.x, 1u, 13676u, u_input.b.x)), abs(vec4<u32>(global2.x, global2.x, u_input.e, global2.x))), ~(~16247u)), global2.x | ~u_input.e));
}

