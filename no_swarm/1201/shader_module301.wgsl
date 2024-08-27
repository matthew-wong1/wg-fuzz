struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 26> = array<vec2<u32>, 26>(vec2<u32>(71449u, 23535u), vec2<u32>(8494u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(1u, 44603u), vec2<u32>(12919u, 3848u), vec2<u32>(14974u, 4294967295u), vec2<u32>(58174u, 11806u), vec2<u32>(26360u, 11451u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(19178u, 4294967295u), vec2<u32>(27973u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(81312u, 0u), vec2<u32>(73089u, 0u), vec2<u32>(32877u, 1u), vec2<u32>(20082u, 136397u), vec2<u32>(1u, 1600u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(40237u, 61146u), vec2<u32>(50630u, 1u), vec2<u32>(67958u, 52190u), vec2<u32>(0u, 9433u), vec2<u32>(1u, 0u));

var<private> global1: Struct_4;

var<private> global2: bool = false;

var<private> global3: array<Struct_2, 24>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    global3 = array<Struct_2, 24>();
    let var_0 = true && (0u != _wgslsmith_div_u32(~2325u | global1.a.d, abs(_wgslsmith_sub_u32(4294967295u, 19513u))));
    global0 = array<vec2<u32>, 26>();
    var var_1 = Struct_5(Struct_1(38262i, false, global1.a.c, global1.a.d));
    var var_2 = vec3<i32>(~(~(-global1.a.a)), 3328i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(16690i, _wgslsmith_div_i32(0i, global1.a.a)), 1i), vec2<i32>(2147483647i, -27196i)));
    return any(global1.a.c) && true;
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = Struct_4(Struct_1(-1i, true, vec2<bool>(global1.a.b, select(func_3(), false, true)), 9687u));
    var var_1 = global1.a;
    global3 = array<Struct_2, 24>();
    var var_2 = global1.a.b;
    let var_3 = Struct_5(Struct_1(-2147483647i, any(var_1.c), global1.a.c, _wgslsmith_mult_u32(select(59377u, _wgslsmith_mod_u32(0u, var_1.d), var_0.a.c.x), ~4294967295u)));
    return i32(-1i) * -(~1i);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = func_2(822f);
    global0 = array<vec2<u32>, 26>();
    return Struct_1(abs(0i), !arg_1.b, vec2<bool>(true, false), select(global1.a.d, ~_wgslsmith_clamp_u32(92433u, 32128u, ~51070u), all(select(!vec2<bool>(arg_0, arg_0), !vec2<bool>(global1.a.c.x, arg_0), global1.a.c))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_2 {
    global1 = Struct_4(func_1(false, func_1(~arg_1.x > arg_1.x, Struct_1(countOneBits(-27060i), true, vec2<bool>(true, false), countOneBits(4294967295u)), -2147483647i), firstTrailingBit(38773i) << (_wgslsmith_sub_u32(0u, firstLeadingBit(arg_1.x)) % 32u)));
    global3 = array<Struct_2, 24>();
    global3 = array<Struct_2, 24>();
    let var_0 = Struct_4(Struct_1(i32(-1i) * -8494i, global1.a.c.x, vec2<bool>(false, true), arg_2.d.d));
    return arg_2;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: i32, arg_3: bool) -> Struct_4 {
    let var_0 = vec4<bool>(false, arg_3, any(vec2<bool>(arg_0.d.d <= ~global1.a.d, !(arg_0.d.a == 1840i))), !global1.a.c.x);
    var var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(~vec2<u32>(global1.a.d, global1.a.d) >> (global0[_wgslsmith_index_u32(arg_0.d.d | 68871u, 26u)] % vec2<u32>(32u))), global0[_wgslsmith_index_u32(~abs(4294967295u), 26u)]), 31924u);
    let var_2 = any(select(!(!vec4<bool>(var_0.x, global1.a.c.x, arg_3, arg_3)), !vec4<bool>(true, !arg_3, global1.a.d > global1.a.d, true), select(var_0, !vec4<bool>(false, global1.a.b, arg_0.c.x, true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(global1.a.c.x, global1.a.c.x, arg_0.d.c.x, false), var_0), vec4<bool>(false, false, true, false), true))));
    let var_3 = 4294967295u;
    let var_4 = !var_0;
    return Struct_4(func_1(false, func_4(func_1(true, arg_0.d, 1i).c, select(~vec3<u32>(var_3, global1.a.d, var_1.x), ~vec3<u32>(51836u, 1u, var_3), true), Struct_2(countOneBits(8691i), arg_0.b, var_0.ww, Struct_1(u_input.a, var_2, arg_0.d.c, 4294967295u))).d, arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1408f;
    global1 = func_5(func_4(global1.a.c, vec3<u32>(~global1.a.d << (global1.a.d % 32u), 51336u, ~1u), Struct_2(0i, var_0, !vec2<bool>(global1.a.c.x, true), func_1(select(true, global1.a.b, false), global1.a, -25485i))), -2147483647i, _wgslsmith_clamp_i32(min(~countOneBits(-5156i), global1.a.a), 10948i, 0i), true);
    global1 = Struct_4(func_1(true, Struct_1(global1.a.a, !(2147483647i <= global1.a.a), vec2<bool>(global1.a.c.x, global1.a.c.x), 1u), -1i << (~firstLeadingBit(global1.a.d) % 32u)));
    let var_1 = Struct_1(global1.a.a, select(func_1(var_0 > var_0, global1.a, ~14242i).b, true, func_4(vec2<bool>(u_input.c < 0i, global1.a.c.x), ~reverseBits(vec3<u32>(22773u, global1.a.d, global1.a.d)), Struct_2(63911i, _wgslsmith_f_op_f32(326f * -685f), vec2<bool>(true, false), Struct_1(u_input.b, false, vec2<bool>(global1.a.c.x, false), global1.a.d))).c.x), global1.a.c, select(4294967295u, 23047u, all(vec3<bool>(false, false, global1.a.c.x))));
    global2 = var_1.c.x;
    global1 = func_5(Struct_2(~u_input.a, var_0, !var_1.c, var_1), -var_1.a, -global1.a.a, true);
    let x = u_input.a;
    s_output = StorageBuffer(~(-(~_wgslsmith_add_vec4_i32(vec4<i32>(-7560i, 23773i, global1.a.a, 50244i), vec4<i32>(-1i, -47056i, global1.a.a, var_1.a)))), _wgslsmith_div_vec4_i32(vec4<i32>(-_wgslsmith_add_i32(2147483647i, var_1.a), 1i, u_input.a, ~u_input.c ^ global1.a.a), abs(max(vec4<i32>(u_input.b, 0i, 16865i, u_input.b), vec4<i32>(u_input.c, -2147483647i, -14495i, u_input.c))) << (~(~vec4<u32>(0u, var_1.d, var_1.d, var_1.d)) % vec4<u32>(32u))));
}

