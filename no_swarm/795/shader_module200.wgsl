struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool;

var<private> global2: array<vec3<bool>, 8>;

var<private> global3: array<Struct_2, 16>;

var<private> global4: u32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_4) -> vec3<u32> {
    var var_0 = -arg_0.a.b.x;
    var var_1 = arg_0;
    global3 = array<Struct_2, 16>();
    global2 = array<vec3<bool>, 8>();
    var var_2 = -2147483647i;
    return var_1.a.c.ywx;
}

fn func_2() -> Struct_3 {
    global3 = array<Struct_2, 16>();
    global2 = array<vec3<bool>, 8>();
    global0 = -1923f;
    let var_0 = countOneBits(reverseBits(~(vec3<i32>(73525i, 56840i, 0i) << (func_3(Struct_4(Struct_1(false, vec3<i32>(-20904i, 1043i, 0i), vec4<u32>(u_input.b, u_input.a, 44254u, u_input.b), vec2<u32>(u_input.a, 50883u)), u_input.b)) % vec3<u32>(32u)))));
    let var_1 = Struct_4(Struct_1(false && all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), var_0, vec4<u32>(9381u, 4294967295u << (max(u_input.a, u_input.c) % 32u), ~89744u, 19759u), reverseBits(func_3(Struct_4(Struct_1(true, var_0, vec4<u32>(17221u, u_input.a, u_input.b, u_input.b), vec2<u32>(u_input.a, 4294967295u)), u_input.c)).xy)), ~reverseBits(~37626u));
    return Struct_3(min(vec2<i32>(_wgslsmith_mod_i32(var_0.x, i32(-1i) * -2147483647i), 2147483647i), _wgslsmith_clamp_vec2_i32(max(vec2<i32>(66887i, -2147483647i), vec2<i32>(1i, 2147483647i)), var_0.yy, _wgslsmith_div_vec2_i32(var_0.yx, vec2<i32>(var_0.x, 13313i))) << (vec2<u32>(select(70985u, 40422u, true), 1u | u_input.b) % vec2<u32>(32u))), var_1.a, Struct_2(false, Struct_1(true, var_0, var_1.a.c, firstTrailingBit(_wgslsmith_mod_vec2_u32(var_1.a.d, var_1.a.c.wx))), select(vec2<bool>(true, var_1.a.a), select(vec2<bool>(true, var_1.a.a), select(vec2<bool>(var_1.a.a, false), vec2<bool>(var_1.a.a, var_1.a.a), vec2<bool>(false, var_1.a.a)), all(vec2<bool>(true, false))), var_1.a.a)), global3[_wgslsmith_index_u32(~1u, 16u)]);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_4(func_2().d.b, 1u);
    var var_1 = var_0.a;
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 - -1000f), -1969f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(326f * arg_0))));
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1453f, arg_0, 569f, arg_0)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-350f, arg_0, _wgslsmith_f_op_f32(exp2(arg_0)), -702f) * vec4<f32>(1333f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 + arg_0), arg_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, -1516f, 700f), vec4<f32>(-955f, arg_0, arg_0, arg_0), vec4<bool>(false, arg_1.c.a, false, true))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(300f, arg_0, 280f, 1000f), vec4<f32>(814f, 763f, 2029f, arg_0), vec4<bool>(true, arg_1.b.a, true, arg_1.b.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_0, arg_0, arg_0) * vec4<f32>(arg_0, -1000f, arg_0, -1853f))))))));
    var var_3 = _wgslsmith_mult_vec2_u32(vec2<u32>(func_2().b.d.x, firstTrailingBit(_wgslsmith_mod_u32(var_0.a.d.x, arg_1.c.b.d.x) << (~6549u % 32u))), max(reverseBits(firstTrailingBit(vec2<u32>(arg_1.d.b.c.x, 27704u))), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(max(vec2<u32>(51029u, 4294967295u), vec2<u32>(28453u, u_input.a)), vec2<u32>(4294967295u, 93611u)), ~var_0.a.d)));
    return Struct_1(arg_1.b.a, (_wgslsmith_mod_vec3_i32(var_0.a.b, vec3<i32>(15943i, 60690i, 15854i)) >> (_wgslsmith_div_vec3_u32(~vec3<u32>(var_3.x, 1u, var_0.b), _wgslsmith_mult_vec3_u32(arg_1.b.c.zzz, var_1.c.ywz)) % vec3<u32>(32u))) ^ vec3<i32>(15513i, -select(arg_1.d.b.b.x, 4068i, arg_1.d.a), _wgslsmith_add_i32(var_0.a.b.x, arg_1.d.b.b.x)), abs(countOneBits(countOneBits(var_1.c))), var_1.c.zy & vec2<u32>(u_input.b | 1u, ~1u));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: vec4<f32>) -> u32 {
    let var_0 = Struct_4(func_4(arg_2.x, func_2(), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(arg_1.a.b.zz | arg_1.a.b.yx, ~vec2<i32>(1i, arg_1.a.b.x)), ~abs(arg_1.a.b.zy))), arg_1.a.c.x);
    global1 = 2147483647i <= countOneBits(-var_0.a.b.x);
    return abs(func_2().b.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(max(vec2<u32>(~u_input.a, 79335u), vec2<u32>(_wgslsmith_mod_u32(func_1(vec2<bool>(false, false), Struct_4(Struct_1(true, vec3<i32>(2147483647i, -1i, -708i), vec4<u32>(0u, 21776u, 0u, 0u), vec2<u32>(0u, u_input.a)), 0u), vec4<f32>(-982f, -134f, -672f, 1112f)), _wgslsmith_mult_u32(u_input.b, u_input.b)), u_input.c)), reverseBits(max(select(vec2<u32>(46107u, u_input.b), vec2<u32>(u_input.a, u_input.c), vec2<bool>(false, false)), vec2<u32>(u_input.b, 1u))) >> ((vec2<u32>(~u_input.c, 46951u) ^ vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), func_2().c.a);
    var var_1 = Struct_4(func_2().d.b, var_0.x);
    global4 = func_4(1f, Struct_3(vec2<i32>(28163i, 18690i), Struct_1(true, firstTrailingBit(var_1.a.b), var_1.a.c, ~var_1.a.c.yx), global3[_wgslsmith_index_u32(u_input.b, 16u)], Struct_2(var_1.a.a, func_4(_wgslsmith_f_op_f32(839f - 294f), Struct_3(var_1.a.b.zz, var_1.a, Struct_2(true, var_1.a, vec2<bool>(false, false)), global3[_wgslsmith_index_u32(var_0.x, 16u)]), _wgslsmith_mult_vec2_i32(var_1.a.b.yx, var_1.a.b.zx)), select(vec2<bool>(true, true), vec2<bool>(var_1.a.a, true), false))), vec2<i32>(2147483647i, ~var_1.a.b.x)).c.x;
    global2 = array<vec3<bool>, 8>();
    global2 = array<vec3<bool>, 8>();
    let var_2 = Struct_1(!var_1.a.a, _wgslsmith_add_vec3_i32(-var_1.a.b, vec3<i32>(53649i, 1i | (var_1.a.b.x >> (var_1.a.c.x % 32u)), _wgslsmith_add_i32(-2147483647i << (var_0.x % 32u), -3899i))), vec4<u32>(u_input.c, _wgslsmith_mult_u32(func_4(_wgslsmith_f_op_f32(f32(-1f) * -473f), func_2(), var_1.a.b.xx).d.x, firstTrailingBit(1u)), _wgslsmith_dot_vec4_u32(abs(var_1.a.c), ~var_1.a.c) ^ 0u, 17721u), var_1.a.d);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(169f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1062f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-463f)))))));
    global3 = array<Struct_2, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(var_2.b.x | 56475i, i32(-1i) * -21111i, var_2.b.x, ~(50968i & var_1.a.b.x)));
}

