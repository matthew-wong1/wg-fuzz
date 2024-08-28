struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<u32>(50203u, 0u, 1u, 59577u), 14990u);

var<private> global1: i32;

var<private> global2: bool;

var<private> global3: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec4<u32>(13588u, 149365u, 40392u, 10445u), 94657u), Struct_2(vec4<u32>(0u, 53107u, 4294967295u, 0u), 51863u), Struct_2(vec4<u32>(10743u, 1u, 1u, 1u), 4294967295u), Struct_2(vec4<u32>(19154u, 19212u, 109691u, 1u), 0u), Struct_2(vec4<u32>(28678u, 9342u, 38048u, 64617u), 0u), Struct_2(vec4<u32>(4294967295u, 101852u, 4294967295u, 0u), 0u), Struct_2(vec4<u32>(5225u, 59084u, 3545u, 21231u), 1u), Struct_2(vec4<u32>(4294967295u, 0u, 1u, 0u), 0u), Struct_2(vec4<u32>(0u, 4294967295u, 0u, 12219u), 44571u), Struct_2(vec4<u32>(13888u, 4294967295u, 69181u, 33554u), 4294967295u), Struct_2(vec4<u32>(61133u, 0u, 1u, 1u), 4294967295u), Struct_2(vec4<u32>(0u, 4294967295u, 4294967295u, 1u), 74472u), Struct_2(vec4<u32>(0u, 1u, 4294967295u, 40020u), 48118u), Struct_2(vec4<u32>(14993u, 1u, 49335u, 7712u), 45336u), Struct_2(vec4<u32>(6944u, 1u, 21716u, 6639u), 0u), Struct_2(vec4<u32>(34370u, 1u, 5124u, 28631u), 1u), Struct_2(vec4<u32>(104925u, 1u, 18836u, 38338u), 1u), Struct_2(vec4<u32>(1u, 4294967295u, 21838u, 75u), 1u), Struct_2(vec4<u32>(1u, 6957u, 10996u, 4294967295u), 27635u), Struct_2(vec4<u32>(74514u, 1u, 1u, 29366u), 92046u), Struct_2(vec4<u32>(1673u, 42566u, 1u, 61603u), 87057u), Struct_2(vec4<u32>(1u, 0u, 40953u, 4294967295u), 50423u), Struct_2(vec4<u32>(1u, 17079u, 4294967295u, 13170u), 1u), Struct_2(vec4<u32>(0u, 36806u, 1u, 0u), 1u), Struct_2(vec4<u32>(0u, 4928u, 28899u, 28097u), 0u));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> bool {
    var var_0 = arg_1.a;
    var var_1 = _wgslsmith_sub_u32(~(~reverseBits(1u | arg_1.a.d)), 0u);
    let var_2 = 1i;
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1106f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * 1885f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -195f) * _wgslsmith_f_op_f32(f32(-1f) * -1288f))))));
    global2 = select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.a.x)) < -1000f, true, true & (arg_1.a.a.x < _wgslsmith_f_op_f32(abs(1000f))));
    return all(select(select(vec3<bool>(any(vec3<bool>(true, true, false)), false, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), all(vec2<bool>(false, false)) & true), vec3<bool>(false, true, true), vec3<bool>(any(vec4<bool>(true, true, true, true)), true, true)));
}

fn func_2(arg_0: Struct_1) -> f32 {
    global0 = global3[_wgslsmith_index_u32(select(global0.b, 83055u, func_3(Struct_1(vec2<f32>(615f, 307f), arg_0.b, arg_0.c, max(1u, 2994u)), Struct_3(Struct_1(vec2<f32>(-885f, arg_0.a.x), arg_0.b, arg_0.c, u_input.b.x)), Struct_3(arg_0)) == !(!func_3(Struct_1(vec2<f32>(arg_0.a.x, -2106f), arg_0.b, arg_0.c, 29635u), Struct_3(arg_0), Struct_3(Struct_1(arg_0.a, -1i, vec3<i32>(-25434i, -14030i, -1i), u_input.b.x))))), 25u)];
    let var_0 = select(select(select(vec4<bool>(all(vec2<bool>(true, false)), true, true, all(vec4<bool>(true, true, true, true))), vec4<bool>(true, all(vec4<bool>(true, false, false, true)), all(vec4<bool>(false, false, true, false)), true), true), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(all(vec2<bool>(false, false)), arg_0.b <= -7611i, false, all(vec2<bool>(true, false))), all(vec4<bool>(true, true, true, true))), !vec4<bool>(-439f >= arg_0.a.x, false, 954f < arg_0.a.x, true)), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), !(true && all(vec2<bool>(false, false)))), select(select(vec4<bool>(false, all(vec2<bool>(false, true)), select(false, true, false), false), vec4<bool>(true, false, arg_0.c.x == arg_0.b, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), true)), false), !vec4<bool>(-2147483647i == arg_0.c.x, true, true, true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(697f, arg_0.a.x)));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> vec4<u32> {
    var var_0 = ~min(u_input.b, countOneBits(firstTrailingBit(~vec2<u32>(global0.b, 0u))));
    let var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-12862i, -1i), vec2<i32>(1i, 1i)), 1i, 43358i), _wgslsmith_add_vec3_i32(vec3<i32>(1i, min(14292i, -1i), 0i), vec3<i32>(1i, 1i, 1i))) >> (~vec3<u32>(u_input.b.x, (u_input.b.x & 70237u) ^ (var_0.x & 30794u), global0.b) % vec3<u32>(32u));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1, arg_1), arg_1, true)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(Struct_1(vec2<f32>(769f, arg_1), var_1.x, vec3<i32>(-2147483647i, var_1.x, var_1.x), u_input.b.x))), _wgslsmith_f_op_f32(arg_1 + arg_1))))));
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-384f, _wgslsmith_f_op_f32(arg_1 - arg_1))), _wgslsmith_sub_i32(-1i, var_1.x), abs(vec3<i32>(-2147483647i, ~var_1.x, countOneBits(var_1.x))), var_0.x));
    var_0 = _wgslsmith_add_vec2_u32(global0.a.zx & _wgslsmith_mult_vec2_u32(vec2<u32>(abs(44100u), arg_0.a.x), vec2<u32>(67162u, min(var_0.x, 65611u))), firstTrailingBit(~arg_0.a.zz));
    return abs(abs(_wgslsmith_add_vec4_u32(arg_0.a, arg_0.a)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> u32 {
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(global0.a, Struct_2(~(~global0.a), 1u), Struct_2(func_1(global3[_wgslsmith_index_u32(u_input.b.x, 25u)], _wgslsmith_f_op_f32(2620f - 1096f)), select(~4294967295u, ~global0.a.x, true)), !(any(vec3<bool>(true, false, true)) || false)) >> ((1u >> (u_input.a % 32u)) % 32u);
    global1 = 1i;
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1660f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-165f, 457f)))), -_wgslsmith_mult_i32(abs(-1i), 1i), vec3<i32>(1i, 1i, 1i), _wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, global0.b), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.b, 1u, global0.b, 1u), global0.a), ~global0.a))));
    let var_2 = 13134i;
    var var_3 = global3[_wgslsmith_index_u32(16953u, 25u)];
    global0 = global3[_wgslsmith_index_u32(max(~func_4(abs(global0.a), global3[_wgslsmith_index_u32(global0.b | reverseBits(global0.a.x), 25u)], Struct_2(global0.a, var_1.a.d), any(vec4<bool>(false, false, false, false)) & true), var_1.a.d), 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1054f * var_1.a.a.x), _wgslsmith_f_op_f32(-var_1.a.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a.x) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-163f))))), false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.a.x, _wgslsmith_f_op_f32(-var_1.a.a.x))));
}

