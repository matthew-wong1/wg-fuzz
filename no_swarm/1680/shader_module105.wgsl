struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(30146i, -1i, -78511i, -1i, 1i, 1i, 0i, 1i, -1i, 73883i, 0i, i32(-2147483648), 10336i, i32(-2147483648), 1i, 2147483647i, i32(-2147483648), -63843i, -72426i, 2147483647i, 7624i, 4991i, 0i, -44289i);

var<private> global1: bool;

var<private> global2: Struct_2;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    global2 = Struct_2(abs(firstLeadingBit(-firstLeadingBit(global2.a))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global2.b.a, _wgslsmith_f_op_vec3_f32(global2.b.a * global2.b.a))))));
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.b.a.xx) - _wgslsmith_f_op_vec2_f32(-global2.b.a.yy)), vec2<f32>(_wgslsmith_f_op_f32(-270f - global2.b.a.x), _wgslsmith_f_op_f32(round(global2.b.a.x))))) - vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.b.a.x + 1168f), _wgslsmith_f_op_f32(global2.b.a.x + 1385f), any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(953f, -214f)))))), true);
    var var_1 = Struct_2(vec2<i32>(_wgslsmith_div_i32(~global2.a.x, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~73804u, firstLeadingBit(27620u)), 24u)]), global0[_wgslsmith_index_u32(max(1u, firstTrailingBit(7220u)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(15498u, 47040u, 8480u, 2795u)), 24u)]), global2.b);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1086f - _wgslsmith_f_op_f32(trunc(global2.b.a.x)))))));
    let var_3 = _wgslsmith_f_op_f32(step(-266f, -381f));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_0.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -381f) - _wgslsmith_f_op_f32(trunc(var_1.b.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1819f), -459f)))));
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(round(-1069f))), true);
    global1 = (false | !any(vec2<bool>(var_1.b, true))) | select(any(!select(vec3<bool>(var_1.b, var_1.b, true), vec3<bool>(var_1.b, var_1.b, var_1.b), var_1.b)), any(vec4<bool>(true, var_1.b, true, true)), var_1.b);
    var var_2 = Struct_3(_wgslsmith_sub_i32(firstTrailingBit(2147483647i) ^ _wgslsmith_sub_i32(~(-38678i), -var_0.a), -28556i));
    let var_3 = var_1.b;
    return global2.b;
}

fn func_1(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: vec3<u32>) -> Struct_1 {
    global2 = Struct_2(_wgslsmith_add_vec2_i32(firstTrailingBit(global2.a << (countOneBits(arg_2.xx) % vec2<u32>(32u))), global2.a), func_2(Struct_3(u_input.b)));
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-global2.b.a));
    var var_1 = Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.b.a.x, global2.b.a.x)))), _wgslsmith_f_op_vec2_f32(trunc(arg_0.a.a.xy))), global2.a.x <= ~(1i << (arg_0.b % 32u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(609f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1452f * global2.b.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + arg_0.a.a.x))))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_div_f32(global2.b.a.x, _wgslsmith_f_op_f32(var_2.x + var_1.a.x)), 1089f);
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: Struct_4) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(round(658f));
    var var_1 = vec3<i32>(-global0[_wgslsmith_index_u32(arg_1.x, 24u)], _wgslsmith_div_i32(-14230i, firstLeadingBit(u_input.a)), global2.a.x);
    let var_2 = _wgslsmith_sub_u32(arg_1.x, 4294967295u);
    global1 = any(select(!vec4<bool>(arg_3.b, all(vec2<bool>(arg_3.b, arg_3.b)), arg_3.b, false & arg_3.b), !vec4<bool>(true, any(vec3<bool>(true, arg_3.b, true)), true, arg_3.b), select(vec4<bool>(arg_3.b, any(vec3<bool>(arg_3.b, arg_3.b, true)), true, true), select(!vec4<bool>(arg_3.b, false, false, true), select(vec4<bool>(false, arg_3.b, true, arg_3.b), vec4<bool>(arg_3.b, false, arg_3.b, false), vec4<bool>(false, arg_3.b, false, false)), !arg_3.b), vec4<bool>(any(vec4<bool>(arg_3.b, false, false, false)), true, !arg_3.b, arg_3.b))));
    var_1 = arg_2.yyw;
    return Struct_2(countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(global2.a.x, var_1.x), -vec2<i32>(-2147483647i, global2.a.x), arg_2.xw) ^ abs(_wgslsmith_mod_vec2_i32(arg_2.wy, vec2<i32>(arg_2.x, -31180i)))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.a.x, -365f, 254f) * global2.b.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(u_input.b);
    global2 = func_4(func_1(Struct_5(global2.b, 1u, 0i & u_input.a), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true))), max(_wgslsmith_mod_vec3_u32(select(vec3<u32>(69664u, 71089u, 1940u), vec3<u32>(0u, 6809u, 53922u), vec3<bool>(true, true, false)), ~vec3<u32>(34066u, 18965u, 35046u)), ~(~vec3<u32>(4294967295u, 4294967295u, 0u)))), firstLeadingBit(vec2<u32>(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 50379u, 0u), vec3<u32>(1u, 1u, 1u)))), _wgslsmith_mod_vec4_i32(abs(-vec4<i32>(global2.a.x, 16864i, global2.a.x, global2.a.x)), firstTrailingBit(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global2.a.x, 1i, -1400i, -33860i), vec4<i32>(-13627i, global0[_wgslsmith_index_u32(3137u, 24u)], global2.a.x, global2.a.x)), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], 0i, u_input.b, global0[_wgslsmith_index_u32(10751u, 24u)])))), Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.b.a.xz) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.b.a.zx - vec2<f32>(global2.b.a.x, global2.b.a.x)))), any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)))));
    var var_1 = ~_wgslsmith_div_vec4_i32(-(firstTrailingBit(vec4<i32>(global2.a.x, global0[_wgslsmith_index_u32(4294967295u, 24u)], u_input.a, global0[_wgslsmith_index_u32(76420u, 24u)])) & _wgslsmith_div_vec4_i32(vec4<i32>(-1i, 28702i, global0[_wgslsmith_index_u32(36208u, 24u)], -1i), vec4<i32>(3764i, 20935i, global2.a.x, global0[_wgslsmith_index_u32(2544u, 24u)]))), abs(select(select(vec4<i32>(-70756i, global2.a.x, global2.a.x, u_input.b), vec4<i32>(global0[_wgslsmith_index_u32(29394u, 24u)], 0i, 0i, u_input.a), true), _wgslsmith_sub_vec4_i32(vec4<i32>(global2.a.x, u_input.a, global2.a.x, 466i), vec4<i32>(u_input.a, 8375i, 0i, -13305i)), global2.b.a.x == -918f)));
    global1 = any(vec3<bool>(true, false, true)) && true;
    var var_2 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(firstTrailingBit(u_input.b), -1637i), func_2(Struct_3(-(~(-1i)))).a.x);
}

