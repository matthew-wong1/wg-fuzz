struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec4<bool>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(19325u, vec2<i32>(-11582i, -78219i), vec4<bool>(true, false, false, true), true, -1i), Struct_1(4294967295u, vec2<i32>(23732i, -1i), vec4<bool>(true, true, true, false), false, -1i), Struct_1(1u, vec2<i32>(-4650i, i32(-2147483648)), vec4<bool>(true, false, false, false), true, 2147483647i), Struct_1(54350u, vec2<i32>(2147483647i, 10206i), vec4<bool>(true, false, false, true), false, 2147483647i), Struct_1(39951u, vec2<i32>(-48255i, -10059i), vec4<bool>(true, false, false, false), true, 2147483647i));

var<private> global3: array<vec4<bool>, 16>;

var<private> global4: Struct_1;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> Struct_1 {
    global1 = abs(u_input.d);
    let var_0 = i32(-1i) * -1i;
    let var_1 = vec4<u32>(u_input.d, u_input.d, 42108u, global4.a);
    return global2[_wgslsmith_index_u32(firstLeadingBit(~u_input.d >> (_wgslsmith_sub_u32(u_input.c.x, ~(global4.a ^ 68733u)) % 32u)), 5u)];
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = !(0u > global4.a);
    let var_1 = Struct_1(_wgslsmith_mod_u32(45488u, arg_0.a), vec2<i32>(_wgslsmith_dot_vec2_i32(arg_0.b, countOneBits(vec2<i32>(u_input.b.x, 33850i) | global4.b)), func_1().e), vec4<bool>(any(global3[_wgslsmith_index_u32(max(~0u, 106553u), 16u)]), all(!select(arg_0.c, vec4<bool>(true, arg_1.d, true, true), global4.c)), arg_0.d, !any(vec2<bool>(var_0, true))), true, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(u_input.b.x, 35732i, 6741i, global4.e), vec4<i32>(-20878i, arg_0.b.x, arg_0.b.x, 1i), vec4<bool>(true, var_0, true, true)), -vec4<i32>(global4.b.x, 0i, arg_0.e, global4.b.x), abs(vec4<i32>(-1i, arg_1.e, global4.e, u_input.b.x))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-32519i, -1i, arg_0.b.x, arg_1.b.x), vec4<i32>(0i, -1i, 2147483647i, arg_0.b.x))) << (u_input.c.x % 32u));
    let var_2 = func_1();
    let var_3 = ~_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(abs(arg_1.a), _wgslsmith_mod_u32(u_input.a.x, 63036u), abs(28727u))), select(vec3<u32>(~4294967295u, 1u, 10190u), ~_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(4294967295u, global4.a, var_1.a)), var_0), u_input.a);
    global2 = array<Struct_1, 5>();
    return 1i;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(arg_1.a, -arg_2.wx, vec4<bool>(true, !(true || !arg_0.x), !arg_1.d, true), true, select(global4.e | _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(arg_2.x, 0i)), ~vec2<i32>(-2147483647i, -1i)), arg_2.x, all(select(arg_1.c, select(vec4<bool>(true, arg_0.x, global4.d, arg_0.x), vec4<bool>(global4.d, false, false, global4.c.x), arg_1.d), select(vec4<bool>(arg_1.d, true, arg_1.c.x, arg_0.x), vec4<bool>(arg_1.c.x, true, true, true), global3[_wgslsmith_index_u32(38080u, 16u)])))));
    var var_1 = all(select(!var_0.c.wzz, vec3<bool>(true, !arg_0.x, all(vec3<bool>(false, true, false))), select(true, false, any(!vec2<bool>(true, arg_0.x)))));
    let var_2 = arg_1.c.xww;
    let var_3 = false;
    return Struct_1(~57456u, select(arg_1.b, vec2<i32>(global4.b.x, u_input.b.x), global4.c.wx), select(arg_1.c, !vec4<bool>(6611i <= arg_2.x, all(global4.c.xyz), var_2.x, arg_1.c.x), select(vec4<bool>(any(arg_1.c), var_3, all(arg_0), true), select(vec4<bool>(arg_0.x, arg_1.c.x, false, var_0.d), func_1().c, !var_0.c), any(vec4<bool>(global4.d, var_0.c.x, true, false)))), any(!(!arg_1.c.www)), firstLeadingBit(max(var_0.b.x, -2147483647i) << (global4.a % 32u)));
}

fn func_2(arg_0: Struct_1) -> i32 {
    global3 = array<vec4<bool>, 16>();
    global4 = func_1();
    global4 = Struct_1((~global4.a << (0u % 32u)) ^ abs(~(global4.a ^ 30875u)), (vec2<i32>(_wgslsmith_add_i32(9485i, 1i), -10186i) & vec2<i32>(_wgslsmith_add_i32(u_input.b.x, u_input.b.x), abs(1i))) >> (u_input.a.yx % vec2<u32>(32u)), !select(select(global3[_wgslsmith_index_u32(firstTrailingBit(arg_0.a), 16u)], vec4<bool>(false, arg_0.c.x, false, global4.c.x), vec4<bool>(false, true, false, true)), !global4.c, false), global4.d, -2147483647i);
    let var_0 = !arg_0.c.wzx;
    let var_1 = func_4(var_0.zx, func_1(), vec4<i32>(-1i, -19758i, countOneBits(func_3(global2[_wgslsmith_index_u32(global4.a, 5u)], Struct_1(41109u, vec2<i32>(arg_0.b.x, -1i), vec4<bool>(true, arg_0.c.x, true, var_0.x), false, global4.e))), max(max(57463i, ~22108i), 9395i)));
    return max(-(1i << (~4294967295u % 32u)), min(~var_1.e, var_1.b.x << (var_1.a % 32u)) << (max(max(1u, 4294967295u), ~var_1.a) % 32u)) >> (~_wgslsmith_mult_u32(4294967295u, global4.a) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(global4.a, 5u)];
    global2 = array<Struct_1, 5>();
    global4 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(global4.a, 0u, _wgslsmith_sub_u32(var_0.a, 4294967295u))), vec3<u32>(~u_input.d ^ _wgslsmith_dot_vec3_u32(u_input.a, ~u_input.a), ~(~max(global4.a, global4.a)), global4.a)), 5u)];
    let var_1 = func_1();
    let var_2 = Struct_1(~var_0.a, ~(-(var_0.b | _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, var_1.b.x), vec2<i32>(u_input.b.x, var_0.e)))), global3[_wgslsmith_index_u32(24656u, 16u)], true && !global4.d, var_1.b.x | abs(reverseBits(-var_0.b.x)));
    global3 = array<vec4<bool>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<i32>(-2147483647i, func_2(Struct_1(99737u, vec2<i32>(var_0.b.x, 16851i), var_2.c, false, var_1.e)), func_4(global4.c.yy, func_4(vec2<bool>(var_2.c.x, var_0.c.x), Struct_1(global4.a, vec2<i32>(-1i, -2147483647i), vec4<bool>(false, true, true, true), global4.d, -2147483647i), vec4<i32>(global4.b.x, 519i, -2147483647i, var_0.e)), ~vec4<i32>(1i, -1i, var_2.e, global4.b.x)).b.x), firstLeadingBit(vec3<i32>(var_0.b.x, 1i, var_1.e))), countOneBits(2023i) ^ firstLeadingBit(func_4(!vec2<bool>(var_1.d, var_2.d), global2[_wgslsmith_index_u32(~u_input.d, 5u)], max(vec4<i32>(0i, -39930i, -27338i, -64296i), vec4<i32>(global4.b.x, 0i, var_0.b.x, 1i))).b.x));
}

