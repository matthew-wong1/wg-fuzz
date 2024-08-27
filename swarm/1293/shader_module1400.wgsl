struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true));

var<private> global2: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(Struct_1(-1650f, vec3<u32>(17263u, 4294967295u, 38480u)), vec2<i32>(1295i, -16894i), Struct_1(-250f, vec3<u32>(20931u, 0u, 13675u)), Struct_1(848f, vec3<u32>(19682u, 6400u, 1u))), Struct_2(Struct_1(-657f, vec3<u32>(0u, 51773u, 4294967295u)), vec2<i32>(-13501i, 2147483647i), Struct_1(-1201f, vec3<u32>(1865u, 67166u, 4294967295u)), Struct_1(-1050f, vec3<u32>(14997u, 1u, 0u))), Struct_2(Struct_1(-501f, vec3<u32>(4294967295u, 20122u, 52391u)), vec2<i32>(37866i, i32(-2147483648)), Struct_1(1000f, vec3<u32>(1u, 54269u, 4294967295u)), Struct_1(562f, vec3<u32>(4294967295u, 4294967295u, 4294967295u))), Struct_2(Struct_1(-706f, vec3<u32>(4294967295u, 4294967295u, 1u)), vec2<i32>(457i, -19825i), Struct_1(-217f, vec3<u32>(1u, 1u, 0u)), Struct_1(-1542f, vec3<u32>(29806u, 17018u, 31009u))));

var<private> global3: Struct_1 = Struct_1(730f, vec3<u32>(25045u, 11494u, 14829u));

var<private> global4: vec2<i32> = vec2<i32>(2147483647i, 1i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> u32 {
    let var_0 = ~countOneBits(~_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.e.yyz, vec3<i32>(u_input.d.x, 2082i, global4.x)), _wgslsmith_div_vec3_i32(vec3<i32>(global4.x, 49202i, u_input.e.x), u_input.e.wwy)));
    global4 = _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(-global4.x, i32(-1i) * -2147483647i), vec2<i32>(~var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global4.x, u_input.b.x, u_input.e.x), u_input.d & u_input.d))), var_0.zz);
    global1 = array<vec4<bool>, 24>();
    global3 = Struct_1(_wgslsmith_f_op_f32(1964f * _wgslsmith_f_op_f32(f32(-1f) * -1032f)), global0.b.b);
    let var_1 = Struct_1(global0.a.a, abs(~(~vec3<u32>(u_input.a, global0.a.b.x, 22002u))));
    return _wgslsmith_clamp_u32(1u, ~abs(36828u), abs(32868u));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    global4 = vec2<i32>(~reverseBits(abs(0i)) << ((~47987u ^ ~abs(global0.b.b.x)) % 32u), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(-4147i, arg_3.b.x, u_input.e.x, global4.x) | vec4<i32>(2147483647i, global4.x, 23039i, -53715i)), u_input.c.x));
    var var_0 = arg_2;
    global2 = array<Struct_2, 4>();
    let var_1 = Struct_3(arg_2, arg_3.a);
    var var_2 = vec3<u32>(var_0.b.x, 4294967295u | _wgslsmith_add_u32(~func_2(), ~global3.b.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(29390u, 14477u, global3.b.x), var_0.b) % 32u)), ~(~abs(17471u)));
    return var_0.a;
}

fn func_1() -> StorageBuffer {
    global2 = array<Struct_2, 4>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(func_2(), reverseBits(u_input.a)) & ~54103u, 24u)], Struct_1(global3.a, global3.b), global2[_wgslsmith_index_u32(1u, 4u)])));
    var var_1 = firstTrailingBit(~(-u_input.d.zz ^ ~vec2<i32>(global4.x, 27575i)) ^ (min(abs(u_input.c), -u_input.d.xy) ^ ~select(vec2<i32>(0i, u_input.b.x), u_input.e.xx, vec2<bool>(false, false))));
    var var_2 = global2[_wgslsmith_index_u32(59165u, 4u)];
    let var_3 = min(vec3<i32>(~1i, -22222i, global4.x), abs(vec3<i32>(-global4.x, 22916i, -28840i))) & select(vec3<i32>(firstLeadingBit(-var_2.b.x), ~(var_1.x >> (1u % 32u)), u_input.b.x), u_input.e.xzw, vec3<bool>(true, true, true));
    return StorageBuffer(max(_wgslsmith_sub_vec4_u32(reverseBits(~vec4<u32>(0u, 1u, 16047u, 32630u)), countOneBits(vec4<u32>(1u, 0u, u_input.a, 21083u))), ~abs(vec4<u32>(4294967295u, var_2.d.b.x, u_input.a, 1u))), abs(_wgslsmith_add_vec2_u32(countOneBits(~global0.a.b.yy), var_2.d.b.yy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -27203i;
    let var_1 = 1u;
    var var_2 = ~u_input.c.x;
    var var_3 = global3.a;
    var_2 = -2147483647i;
    let x = u_input.a;
    s_output = func_1();
}

