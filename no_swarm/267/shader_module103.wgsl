struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true));

var<private> global1: array<vec2<u32>, 7> = array<vec2<u32>, 7>(vec2<u32>(0u, 0u), vec2<u32>(53686u, 41005u), vec2<u32>(1u, 30696u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 10559u), vec2<u32>(35427u, 0u), vec2<u32>(1u, 1u));

var<private> global2: vec2<f32>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> vec4<u32> {
    global2 = _wgslsmith_f_op_vec2_f32(-arg_0);
    global0 = array<vec3<bool>, 9>();
    var var_0 = (abs((u_input.c >> (12820u % 32u)) ^ ~38532u) >> (reverseBits(1u) % 32u)) >> (~29566u % 32u);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-686f + 333f), global2.x))))), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(ceil(415f)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(arg_0, arg_0, vec2<bool>(true, false)));
    return ~abs(min(~vec4<u32>(0u, u_input.c, u_input.c, u_input.c), _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 18879u, u_input.c, 50839u), ~vec4<u32>(u_input.c, 4294967295u, 0u, 1u))));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + 146f);
    var var_1 = countOneBits(vec4<i32>(arg_0, 2147483647i, -25664i, arg_0 | countOneBits(1i)));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, arg_3, global2.x, global2.x), vec4<f32>(-1000f, -291f, global2.x, -1000f), vec4<bool>(arg_1, false, arg_2.b, arg_1))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1157f, var_0, var_0, arg_3))))), select(vec4<bool>(!arg_1, false, _wgslsmith_f_op_f32(floor(global2.x)) != _wgslsmith_f_op_f32(exp2(arg_3)), arg_2.b), !vec4<bool>(!arg_1, true & arg_1, any(global0[_wgslsmith_index_u32(12613u, 9u)]), false), vec4<bool>(true, true, !select(false, arg_1, true), arg_2.b))));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-294f, var_0)) + var_2.yz) * _wgslsmith_f_op_vec2_f32(-var_2.zw))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(-768f + -871f))) + -1247f), 185f));
    let var_3 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(-var_1.zy, var_1.wx), max(44423i, -reverseBits(arg_0)), -57640i) << (40830u % 32u);
    return _wgslsmith_sub_vec3_i32(select(var_1.zzx, ~vec3<i32>(var_3 << (1u % 32u), arg_0, 23050i), global0[_wgslsmith_index_u32(min(arg_2.a << (~arg_2.a % 32u), 4294967295u), 9u)]), -select(var_1.yxx, -vec3<i32>(-7807i, u_input.b, -2147483647i) | vec3<i32>(var_1.x, arg_0, 1i), select(select(global0[_wgslsmith_index_u32(104611u, 9u)], vec3<bool>(true, arg_1, arg_2.b), vec3<bool>(arg_2.b, arg_1, arg_1)), global0[_wgslsmith_index_u32(u_input.c, 9u)], false)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: vec4<bool>) -> vec2<bool> {
    var var_0 = _wgslsmith_div_vec3_i32(func_3(u_input.a, false, Struct_2(~u_input.c, select(arg_1.x, arg_2.x, all(vec4<bool>(false, arg_2.x, arg_1.x, true)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-336f))))), abs(vec3<i32>(u_input.a, -u_input.b, u_input.b)));
    global2 = arg_0.yz;
    let var_1 = 4294967295u;
    var_0 = countOneBits(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -26063i) & vec2<i32>(var_0.x, -1i), firstLeadingBit(var_0.xy)), firstTrailingBit(i32(-1i) * -1i), min(-31473i, ~var_0.x))) >> (_wgslsmith_mult_vec3_u32(~(vec3<u32>(1721u, 1u, var_1) & vec3<u32>(0u, 20217u, 0u)), select(firstTrailingBit(vec3<u32>(3689u, 1u, u_input.c)), abs(~vec3<u32>(4294967295u, u_input.c, 5831u)), !all(vec4<bool>(true, arg_2.x, arg_1.x, false)))) % vec3<u32>(32u));
    var var_2 = Struct_2(_wgslsmith_div_u32(11953u, ~(var_1 & ~u_input.c)), ~min(firstTrailingBit(u_input.b), 1i) < 18233i);
    return select(select(arg_2.ww, select(arg_2.yy, !vec2<bool>(arg_2.x, arg_2.x), any(!global0[_wgslsmith_index_u32(var_2.a, 9u)])), ~(-u_input.a) <= _wgslsmith_mult_i32(var_0.x, -var_0.x)), vec2<bool>(true, true), select(_wgslsmith_add_u32(firstTrailingBit(29952u), 36689u) != ~u_input.c, false, !(121f > _wgslsmith_f_op_f32(select(global2.x, -1000f, true)))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = Struct_2(~0u, !any(func_2(vec3<f32>(arg_3.x, arg_3.x, arg_3.x), vec2<bool>(true, true), vec4<bool>(arg_1, arg_1, arg_1, arg_1))));
    var var_1 = _wgslsmith_f_op_f32(-arg_0.b.x);
    var var_2 = arg_1;
    let var_3 = u_input.b;
    var var_4 = var_3 ^ -1i;
    return Struct_2(max(0u, _wgslsmith_mult_u32(var_0.a, 4294967295u)), func_2(arg_3, !vec2<bool>(true, arg_1), !vec4<bool>(func_2(arg_0.b.zyx, vec2<bool>(true, false), vec4<bool>(var_0.b, var_0.b, arg_1, arg_1)).x, true, false, true)).x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~func_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) * vec2<f32>(global2.x, global2.x)))), -(~1i)));
    let var_1 = func_4(Struct_1(var_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2423f, -1981f, 153f, global2.x))))))), any(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1966f, 1373f, -292f), vec3<f32>(global2.x, global2.x, 439f), vec3<bool>(true, false, false))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(207f, 209f, global2.x))), vec2<bool>(true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), 1u, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(global2.x, -449f), _wgslsmith_f_op_f32(-483f + global2.x)))), _wgslsmith_f_op_f32(-2038f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(step(global2.x, global2.x))));
    let var_2 = Struct_2(countOneBits(max(0u, 30719u)) ^ var_1.a, false);
    let var_3 = var_2.a;
    let var_4 = vec3<i32>(u_input.b, -24139i, -52169i);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_u32(vec4<u32>(var_3, 4294967295u, ~var_1.a, 1u), select(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.a, u_input.c, var_2.a, var_3), vec4<u32>(var_2.a, 43405u, var_3, 39190u)), ~vec4<u32>(var_1.a, u_input.c, 12652u, u_input.c), !var_1.b)), _wgslsmith_mod_u32(var_1.a, ~(~var_1.a) >> (_wgslsmith_sub_u32(~4294967295u, _wgslsmith_mod_u32(u_input.c, 4294967295u)) % 32u)), ~vec2<i32>(_wgslsmith_add_i32(1i, var_4.x), firstTrailingBit(var_4.x)), 48170u);
}

