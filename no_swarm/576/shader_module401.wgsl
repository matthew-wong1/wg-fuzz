struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: array<f32, 17>;

var<private> global3: Struct_3;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec3<bool> {
    global2 = array<f32, 17>();
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(660f + global0.a.a.x) * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(51067u, 17u)])), _wgslsmith_f_op_f32(f32(-1f) * -215f), global0.a.a.x) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global0.a.a.xzw), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0.a.a.x, -994f))))))));
    let var_1 = any(vec3<bool>(any(vec2<bool>(true, true)), any(vec2<bool>(false, global1.x & global3.a.c)), 1u > ~_wgslsmith_clamp_u32(0u, 0u, u_input.c.x)));
    var var_2 = select(select(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 17u)] <= global0.a.a.x, false, true), !select(vec3<bool>(global0.a.b.c, var_1, global3.a.c), select(vec3<bool>(var_1, global3.a.c, false), vec3<bool>(true, var_1, false), vec3<bool>(global3.a.c, true, false)), select(vec3<bool>(var_1, global0.a.b.c, var_1), vec3<bool>(true, global0.a.b.c, false), vec3<bool>(global1.x, false, true))), select(!select(vec3<bool>(false, global3.a.c, false), vec3<bool>(true, var_1, false), vec3<bool>(true, false, true)), vec3<bool>(false, global1.x, true), true)), !select(select(vec3<bool>(global0.a.b.c, global3.a.c, var_1), !vec3<bool>(global3.a.c, true, var_1), false || global3.a.c), vec3<bool>(!global1.x, global1.x, !global0.a.b.c), vec3<bool>(833f < var_0.x, !global0.a.b.c, true)), select(vec3<bool>(_wgslsmith_f_op_f32(abs(var_0.x)) <= 272f, !global3.a.c, any(vec2<bool>(var_1, false)) | true), select(select(vec3<bool>(global0.a.b.c, true, global3.a.c), select(vec3<bool>(true, false, global3.a.c), vec3<bool>(true, global1.x, global3.a.c), vec3<bool>(true, global0.a.b.c, global0.a.b.c)), var_1 || global3.a.c), vec3<bool>(true, true, global1.x & global1.x), true), vec3<bool>(false, !(!global1.x), global0.a.b.c && true)));
    var var_3 = 27337u;
    return select(!select(select(select(vec3<bool>(global0.a.b.c, true, global0.a.b.c), vec3<bool>(true, var_1, false), global3.a.c), !vec3<bool>(global3.a.c, true, var_1), var_1), !vec3<bool>(true, global0.a.b.c, false), true), !select(select(!vec3<bool>(var_2.x, global1.x, global1.x), !vec3<bool>(true, var_1, global3.a.c), true), vec3<bool>(global0.a.b.c, false, false), var_1), !(!select(!vec3<bool>(global0.a.b.c, global1.x, var_2.x), select(vec3<bool>(false, true, global0.a.b.c), vec3<bool>(false, global3.a.c, global3.a.c), vec3<bool>(false, false, global0.a.b.c)), select(vec3<bool>(var_2.x, true, var_1), vec3<bool>(var_1, var_2.x, var_1), vec3<bool>(false, global0.a.b.c, false)))));
}

fn func_2(arg_0: Struct_4) -> Struct_3 {
    global3 = Struct_3(global3.a);
    var var_0 = !(!vec2<bool>(~(-2147483647i) != -arg_0.a.b.b.x, all(func_3())));
    var var_1 = Struct_3(arg_0.a.b);
    let var_2 = var_1.a.a;
    var_0 = vec2<bool>(any(!select(select(vec4<bool>(false, var_1.a.c, global1.x, true), vec4<bool>(false, false, global3.a.c, true), vec4<bool>(true, true, false, global0.a.b.c)), select(vec4<bool>(global0.a.b.c, true, false, arg_0.a.b.c), vec4<bool>(global1.x, true, var_0.x, global3.a.c), false), vec4<bool>(true, false, false, global0.a.b.c))), false);
    return Struct_3(Struct_1(4294967295u, vec2<i32>(-_wgslsmith_mod_i32(66479i, arg_0.a.b.b.x), global3.a.b.x), false));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_4 {
    global1 = select(vec2<bool>(all(select(vec3<bool>(false, global0.a.b.c, false), select(vec3<bool>(true, global3.a.c, global1.x), vec3<bool>(arg_2.a.c, true, arg_3.x), false), select(vec3<bool>(global3.a.c, true, true), vec3<bool>(global3.a.c, false, global0.a.b.c), vec3<bool>(true, true, false)))), !all(vec4<bool>(global0.a.b.c, arg_2.a.c, global1.x, true))), arg_3, arg_3.x);
    global0 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global0.a.a), vec4<f32>(-276f, global2[_wgslsmith_index_u32(arg_0, 17u)], global0.a.a.x, -1714f))), global0.a.a, global0.a.b.c)), func_2(Struct_4(global0.a)).a));
    var var_0 = Struct_4(global0.a);
    let var_1 = !global0.a.b.c;
    let var_2 = u_input.d.wx;
    return Struct_4(var_0.a);
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> bool {
    global0 = func_4(u_input.e, _wgslsmith_dot_vec3_i32((-vec3<i32>(global3.a.b.x, global0.a.b.b.x, global0.a.b.b.x) & _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, arg_1.b.x, global0.a.b.b.x), vec3<i32>(global3.a.b.x, -33761i, global0.a.b.b.x))) & select(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, arg_0, 1i), vec3<i32>(-1i, global0.a.b.b.x, arg_1.b.x)), ~vec3<i32>(15515i, 2147483647i, global0.a.b.b.x), false), -(~vec3<i32>(-1i, global3.a.b.x, arg_0))), func_2(Struct_4(global0.a)), !vec2<bool>(true, all(select(vec3<bool>(false, false, true), vec3<bool>(global3.a.c, global1.x, false), global3.a.c))));
    global0 = func_4(4294967295u << (select(u_input.d.x, firstTrailingBit(_wgslsmith_mod_u32(16898u, 1u)), false) % 32u), firstLeadingBit(~_wgslsmith_sub_i32(_wgslsmith_add_i32(2147483647i, 0i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b.x, 35036i, arg_1.b.x), vec3<i32>(global0.a.b.b.x, -15275i, -31393i)))), Struct_3(arg_1), func_3().xz);
    let var_0 = Struct_4(global0.a);
    let var_1 = _wgslsmith_mult_i32(firstTrailingBit(var_0.a.b.b.x), ~(-85611i));
    global1 = !(!select(select(!vec2<bool>(var_0.a.b.c, arg_1.c), !vec2<bool>(global1.x, global1.x), all(vec4<bool>(global1.x, false, global3.a.c, arg_1.c))), vec2<bool>(false, global1.x), var_0.a.b.b.x == ~global3.a.b.x));
    return !arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = select(!select(!vec4<bool>(false, global3.a.c, false, false), !select(vec4<bool>(global3.a.c, global1.x, global1.x, false), vec4<bool>(false, global1.x, global3.a.c, true), vec4<bool>(false, global3.a.c, global3.a.c, true)), !all(vec2<bool>(global0.a.b.c, false))), vec4<bool>(true, global1.x, func_1(-14149i, Struct_1(global3.a.a, vec2<i32>(global0.a.b.b.x, global3.a.b.x), true)), func_1(global0.a.b.b.x, Struct_1(u_input.c.x, global0.a.b.b, true))), func_3().x);
    global2 = array<f32, 17>();
    let var_2 = Struct_3(Struct_1(global3.a.a, vec2<i32>(21989i, -9170i), global0.a.b.c));
    var var_3 = -firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_add_i32(-53982i, global3.a.b.x) >> (32083u % 32u), var_2.a.b.x));
    let var_4 = u_input.c.xx;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-7189i, _wgslsmith_add_i32(~_wgslsmith_mult_i32(global0.a.b.b.x, var_2.a.b.x), 1i)), ~u_input.d.xzw, global0.a.a.xwx, ((vec4<i32>(global0.a.b.b.x, var_2.a.b.x, -16034i, 31567i) >> (~u_input.d % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_i32(~vec4<i32>(global3.a.b.x, 9072i, var_2.a.b.x, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, var_2.a.b.x, global0.a.b.b.x, -16418i), vec4<i32>(global3.a.b.x, -1i, 26426i, global3.a.b.x)))) | _wgslsmith_sub_vec4_i32(vec4<i32>(global0.a.b.b.x, global3.a.b.x, 16729i, 0i) ^ vec4<i32>(1i, global3.a.b.x, 0i, global3.a.b.x), vec4<i32>(1i, abs(global0.a.b.b.x), i32(-1i) * -2147483647i, _wgslsmith_mult_i32(var_2.a.b.x, var_2.a.b.x))));
}

