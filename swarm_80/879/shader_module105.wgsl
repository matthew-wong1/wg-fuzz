struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

var<private> global1: Struct_2;

var<private> global2: array<bool, 2>;

var<private> global3: bool;

var<private> global4: array<vec4<bool>, 26>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32) -> vec3<bool> {
    let var_0 = !(!select(select(select(global4[_wgslsmith_index_u32(u_input.d.x, 26u)], global4[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(u_input.d.x, 2u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 2u)], global2[_wgslsmith_index_u32(u_input.a.x, 2u)], global1.b.a.x, global1.a.a.x), vec4<bool>(global1.c, false, true, false), false), !global4[_wgslsmith_index_u32(u_input.d.x, 26u)]), global4[_wgslsmith_index_u32(u_input.a.x, 26u)], global4[_wgslsmith_index_u32(u_input.b, 26u)]));
    let var_1 = u_input.d.yz;
    var var_2 = u_input.d.x;
    let var_3 = abs(u_input.a.xy);
    global3 = var_0.x;
    return var_0.xyy;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3) -> i32 {
    global2 = array<bool, 2>();
    global1 = Struct_2(arg_1.d, arg_1.d, true, Struct_1(func_3(u_input.c), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(trunc(global1.d.b)))));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-939f, 433f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-578f + arg_0.x)), global1.a.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0))) - arg_0);
    var var_1 = ~vec3<i32>(arg_1.c.x, _wgslsmith_div_i32(1i, u_input.c), _wgslsmith_mod_i32(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c.x, arg_1.c.x, arg_1.c.x), vec3<i32>(arg_1.c.x, arg_1.c.x, arg_1.c.x))), 0i));
    let var_2 = Struct_1(arg_1.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + 1187f) - _wgslsmith_f_op_f32(214f * -304f)) * global1.a.b)));
    return u_input.c;
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: i32, arg_3: f32) -> Struct_3 {
    var var_0 = !select(!select(!global1.d.a.zy, global1.a.a.yy, select(global1.d.a.yx, global1.a.a.yy, vec2<bool>(arg_1, true))), !(!(!global1.b.a.zz)), select(global1.a.a.xz, vec2<bool>(true, all(global4[_wgslsmith_index_u32(u_input.a.x, 26u)])), func_3(-1i).xy));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(round(-704f)), _wgslsmith_f_op_f32(global1.b.b * global1.d.b), _wgslsmith_f_op_f32(floor(-518f))))) + vec3<f32>(global1.d.b, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-577f, global0[_wgslsmith_index_u32(u_input.d.x, 9u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -117f) * arg_3))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, global1.b.b, global1.d.b) + vec3<f32>(-728f, 550f, 390f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1137f, global0[_wgslsmith_index_u32(16314u, 9u)], -1161f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(701f, global1.d.b, 1289f)))), global1.a.a));
    let var_2 = ~_wgslsmith_dot_vec3_i32(arg_0.wyz, arg_0.wzy);
    var var_3 = -57171i;
    var var_4 = vec2<bool>(true, any(vec4<bool>(true, false, func_3(-10314i).x, true)));
    return Struct_3(var_1, _wgslsmith_f_op_f32(global1.b.b + 2400f), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(33094i, arg_0.x), ~61593i), ~(vec2<i32>(-38133i, -50297i) ^ vec2<i32>(-796i, var_2))), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(-7754i, arg_0.x), vec2<i32>(var_2, 1i), global1.b.a.yz), -vec2<i32>(-1i, arg_2), arg_0.xx), firstLeadingBit(-arg_0.xx))), Struct_1(vec3<bool>(var_4.x, _wgslsmith_div_u32(u_input.b, u_input.d.x) < _wgslsmith_mult_u32(u_input.a.x, u_input.d.x), all(!vec3<bool>(arg_1, false, global1.d.a.x))), global1.a.b));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_1(!vec3<bool>(global1.a.b > _wgslsmith_f_op_f32(global1.a.b * -604f), false, !(!global1.d.a.x)), global0[_wgslsmith_index_u32(53861u, 9u)]);
    return func_4(select(vec4<i32>(func_2(vec4<f32>(-1673f, var_0.b, var_0.b, global0[_wgslsmith_index_u32(u_input.b, 9u)]), Struct_3(vec3<f32>(global0[_wgslsmith_index_u32(26390u, 9u)], 101f, var_0.b), var_0.b, vec2<i32>(-5715i, 1i), Struct_1(global1.d.a, var_0.b))), -46637i, ~u_input.c, i32(-1i) * -5230i), vec4<i32>(firstTrailingBit(0i), abs(-2147483647i), -40183i, _wgslsmith_mod_i32(u_input.c, -2147483647i)), true) << ((vec4<u32>(select(18499u, 4294967295u, global2[_wgslsmith_index_u32(32752u, 2u)]), 0u, 1u, ~u_input.a.x) & reverseBits(~vec4<u32>(u_input.b, 20792u, 27172u, 20043u))) % vec4<u32>(32u)), ((u_input.d.x == reverseBits(0u)) & !(70007i > u_input.c)) & var_0.a.x, countOneBits(u_input.c << (_wgslsmith_clamp_u32(_wgslsmith_add_u32(25789u, u_input.d.x), _wgslsmith_sub_u32(u_input.d.x, u_input.d.x), u_input.b) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-173f, 557f)))) - _wgslsmith_f_op_f32(-global1.d.b))));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1f * 300f), 980f, 2489f, -1443f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(488f)) * arg_1.x), -336f, _wgslsmith_f_op_f32(round(-1678f)))));
    let var_1 = abs(~u_input.a.x);
    let var_2 = func_4(-((vec4<i32>(0i, u_input.c, arg_0.c.x, u_input.c) >> (u_input.a % vec4<u32>(32u))) >> (~vec4<u32>(4294967295u, 0u, var_1, var_1) % vec4<u32>(32u))) >> (u_input.d % vec4<u32>(32u)), !((1i << (max(var_1, 34274u) % 32u)) >= 1i), u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1414f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global1.d.b, arg_2.x)), _wgslsmith_f_op_f32(-var_0.x)))) * 636f)).d;
    var var_3 = select(func_4(vec4<i32>(-19057i, -arg_0.c.x, i32(-1i) * -4528i, ~(-u_input.c)), true, (reverseBits(arg_0.c.x) | ~u_input.c) ^ min(arg_0.c.x, -arg_0.c.x), 1000f).d.a, vec3<bool>(all(!vec2<bool>(global1.b.a.x, true)) & all(vec2<bool>(true, var_2.a.x)), true, any(vec2<bool>(var_2.a.x, true))), select(vec3<bool>(global2[_wgslsmith_index_u32(var_1, 2u)], any(func_1().d.a), func_3(~u_input.c).x), select(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], false, false), vec3<bool>(global1.a.b >= arg_0.b, all(global4[_wgslsmith_index_u32(var_1, 26u)]), true && var_2.a.x), global2[_wgslsmith_index_u32(abs(firstTrailingBit(4294967295u)), 2u)]), !(!(!var_2.a.x))));
    var var_4 = Struct_2(func_1().d, Struct_1(!(!arg_0.d.a), global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), arg_0.d.a.x == true, func_1().d);
    return Struct_1(global1.b.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_2.b, 187f)), _wgslsmith_f_op_f32(-1477f - _wgslsmith_f_op_f32(-arg_2.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.yyz;
    var var_1 = vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)] == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(16531u, 9u)])), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global1.a.b)))))), global1.d.a.x, global2[_wgslsmith_index_u32(~(~4294967295u), 2u)] & false);
    let var_2 = Struct_2(func_5(func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(var_0.x, 9u)], 186f, global0[_wgslsmith_index_u32(0u, 9u)])))), vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(26716u, 9u)] * _wgslsmith_f_op_f32(-1619f - global0[_wgslsmith_index_u32(var_0.x, 9u)])), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1000f, -605f)))), _wgslsmith_f_op_f32(-global1.d.b))), func_4(vec4<i32>(~u_input.c, -u_input.c, ~u_input.c, ~func_2(vec4<f32>(874f, global1.d.b, global1.d.b, global1.d.b), Struct_3(vec3<f32>(global1.a.b, global1.b.b, global1.a.b), global0[_wgslsmith_index_u32(4383u, 9u)], vec2<i32>(-25816i, 1i), global1.b))), global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(u_input.d.x << (u_input.b % 32u), min(64243u, var_0.x))), 2u)], -1i, _wgslsmith_f_op_f32(floor(450f))).d, var_1.x, global1.b);
    let var_3 = var_2;
    let var_4 = (true != any(!select(vec4<bool>(var_1.x, global2[_wgslsmith_index_u32(0u, 2u)], true, true), global4[_wgslsmith_index_u32(24136u, 26u)], vec4<bool>(true, var_2.c, false, global2[_wgslsmith_index_u32(var_0.x, 2u)])))) & true;
    global4 = array<vec4<bool>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(global1.d.b, _wgslsmith_f_op_f32(var_2.d.b * _wgslsmith_div_f32(1012f, 435f)), ~_wgslsmith_mult_vec2_i32(select(vec2<i32>(u_input.c, 27963i), vec2<i32>(8107i, u_input.c), true), vec2<i32>(u_input.c, u_input.c)) >> (countOneBits(vec2<u32>(~u_input.d.x, var_0.x)) % vec2<u32>(32u)), 26603i, _wgslsmith_mult_u32(var_0.x, 5978u));
}

