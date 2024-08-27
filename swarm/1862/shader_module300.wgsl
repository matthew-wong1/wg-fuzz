struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec2<u32>,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_1(vec3<u32>(4294967295u, 4294967295u, 58193u)), Struct_2(vec3<u32>(54905u, 0u, 28157u)));

var<private> global1: bool = false;

var<private> global2: array<Struct_5, 24>;

var<private> global3: f32;

var<private> global4: array<Struct_4, 7>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_3) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(461f, _wgslsmith_f_op_f32(f32(-1f) * -584f), 1f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(ceil(-808f)), _wgslsmith_f_op_f32(floor(610f)), -1696f))))));
    var var_1 = arg_2.c.x;
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_2.b, 1u | (global0.b.a.x & _wgslsmith_clamp_u32(38529u, countOneBits(6974u), arg_2.b))), 24u)];
    var var_2 = ~abs(arg_2.a.x);
    var var_3 = global0.b;
    return (_wgslsmith_add_i32(min(arg_1.x, select(arg_0, 0i, arg_2.c.x)), -1i) << (_wgslsmith_mod_u32(select(firstLeadingBit(57455u), _wgslsmith_mod_u32(global0.a.a.x, arg_2.b), true), ~(~global0.a.a.x)) % 32u)) <= -51876i;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>) -> f32 {
    let var_0 = arg_0.x;
    global4 = array<Struct_4, 7>();
    let var_1 = ~global0.a.a.x;
    var var_2 = vec4<u32>(~41553u, 17160u, 42316u, 0u);
    let var_3 = any(select(!select(vec2<bool>(true, false), vec2<bool>(true, true), func_3(u_input.a.x, vec4<i32>(var_0, -47940i, var_0, u_input.a.x), Struct_3(vec2<i32>(19575i, -13055i), global0.a.a.x, vec3<bool>(true, true, true)))), vec2<bool>(func_3(_wgslsmith_mult_i32(12376i, -1i), vec4<i32>(-2147483647i, 2147483647i, var_0, arg_1.x), Struct_3(vec2<i32>(arg_0.x, 12443i), var_1, vec3<bool>(true, true, true))), func_3(2147483647i, u_input.a, Struct_3(u_input.a.ww, var_2.x, vec3<bool>(true, true, false)))), select(vec2<bool>(true, true), vec2<bool>(true, 27926u > global0.a.a.x), select(vec2<bool>(true, false), vec2<bool>(false, false), true))));
    return -431f;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4) -> f32 {
    global3 = -1786f;
    global2 = array<Struct_5, 24>();
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.yy, ~arg_1.a.a), u_input.a.xz), vec3<i32>(u_input.a.x, i32(-1i) * -78161i, ~1i))), 556f));
    global4 = array<Struct_4, 7>();
    let var_1 = global2[_wgslsmith_index_u32(~arg_1.a.b, 24u)];
    return _wgslsmith_f_op_f32(-909f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-500f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_5, 24>();
    var var_0 = 23835i;
    global4 = array<Struct_4, 7>();
    global3 = _wgslsmith_f_op_f32(func_1(global0.a, global4[_wgslsmith_index_u32(4294967295u, 7u)]));
    var var_1 = _wgslsmith_add_vec4_i32(~reverseBits(select(vec4<i32>(u_input.a.x, 0i, 38528i, u_input.a.x), u_input.a, vec4<bool>(true, false, true, false))), vec4<i32>(-1i) * -(~u_input.a)) | vec4<i32>(_wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), u_input.a.xw)), abs(_wgslsmith_div_vec2_i32(u_input.a.xw, u_input.a.xy))), -1i, u_input.a.x, abs(-2147483647i));
    var var_2 = select(abs(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -23718i, var_1.x), ~vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, -2147483647i)), -u_input.a, -_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(var_1.x, -1i, 2147483647i, u_input.a.x)))), _wgslsmith_mult_vec4_i32(((u_input.a >> (vec4<u32>(55344u, 0u, global0.a.a.x, 15219u) % vec4<u32>(32u))) >> ((vec4<u32>(global0.b.a.x, global0.b.a.x, 37393u, 4294967295u) >> (vec4<u32>(global0.b.a.x, global0.b.a.x, 51791u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))) | _wgslsmith_add_vec4_i32(u_input.a, -u_input.a), ((u_input.a ^ u_input.a) & (u_input.a | vec4<i32>(u_input.a.x, u_input.a.x, 0i, -54631i))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(global0.a.a.x, global0.b.a.x, global0.b.a.x, global0.a.a.x), vec4<u32>(global0.a.a.x, global0.b.a.x, global0.a.a.x, global0.b.a.x)) % vec4<u32>(32u))), vec4<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-2459f)), -2258f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1185f, 149f)) * _wgslsmith_f_op_f32(-577f + -1580f)), false, all(vec3<bool>(true, var_1.x >= u_input.a.x, true)), !(-2147483647i <= u_input.a.x)));
    var_1 = u_input.a;
    let var_3 = Struct_4(Struct_3(-vec2<i32>(-2147483647i, 1i), ~(14309u | _wgslsmith_sub_u32(1u, global0.b.a.x)), vec3<bool>(any(vec2<bool>(true, false)), true, true)), _wgslsmith_mult_i32(-2147483647i, 0i), global0.a.a.yy, Struct_3(vec2<i32>(-8690i, max(~var_2.x, var_2.x)), global0.a.a.x, !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true)));
    let var_4 = var_3.d;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, vec2<u32>(~(~12373u), global0.b.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -205f) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-760f * -832f), _wgslsmith_div_f32(-479f, -303f))))));
}

