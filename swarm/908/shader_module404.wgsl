struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<Struct_4, 22>;

var<private> global2: array<f32, 26> = array<f32, 26>(435f, 474f, -453f, -490f, -244f, 176f, 319f, 182f, 1116f, 539f, -1001f, 1132f, -431f, -999f, 1680f, -360f, 1207f, 267f, 1000f, -852f, -2289f, 122f, -602f, -1057f, 324f, -1201f);

var<private> global3: vec4<u32> = vec4<u32>(28478u, 27101u, 29784u, 4294967295u);

var<private> global4: Struct_3 = Struct_3(Struct_2(Struct_1(4294967295u), vec4<f32>(877f, 2381f, 406f, 1000f)), Struct_1(4294967295u), true);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> vec4<bool> {
    var var_0 = Struct_1(u_input.c.x);
    var var_1 = Struct_5(global4.c, _wgslsmith_dot_vec3_i32(select(firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, 0i)), vec3<i32>(61779i, -5449i, u_input.a.x) & select(u_input.a, u_input.a, arg_2), vec3<bool>(all(vec4<bool>(false, true, global4.c, global0.x)), all(vec3<bool>(false, true, arg_2)), true)), vec3<i32>(u_input.b.x, u_input.a.x, -_wgslsmith_sub_i32(u_input.b.x, u_input.b.x))));
    global3 = select(vec4<u32>(u_input.c.x & ~(~1u), ~(u_input.c.x << (50417u % 32u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.a, global4.a.a.a, 0u), u_input.c), ~u_input.c.x, _wgslsmith_mult_u32(var_0.a | var_0.a, ~1u)), global4.b.a | _wgslsmith_dot_vec3_u32(global3.xyz, _wgslsmith_sub_vec3_u32(global3.xzy, u_input.c))), vec4<u32>(var_0.a, 22023u, ~(~arg_1.a), 44186u), !select(!vec4<bool>(var_1.a, global0.x, var_1.a, false), !(!vec4<bool>(global0.x, false, global0.x, var_1.a)), _wgslsmith_f_op_f32(arg_0.b.x + global2[_wgslsmith_index_u32(1u, 26u)]) > _wgslsmith_f_op_f32(sign(arg_0.b.x))));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1058f, 1078f, _wgslsmith_f_op_f32(962f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -862f) * _wgslsmith_f_op_f32(global4.a.b.x - global4.a.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.c.x, 26u)], global2[_wgslsmith_index_u32(1u, 26u)]))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(18677u, 26u)])), arg_0.b.x)))) + global4.a.b);
    return select(!vec4<bool>(global4.a.b.x > global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.a, 1u), 26u)], (var_1.a | global4.c) | (global0.x | arg_2), var_1.a, global0.x), select(!(!(!vec4<bool>(true, global4.c, var_1.a, global4.c))), !(!vec4<bool>(true, false, arg_2, arg_2)), (all(vec4<bool>(false, false, arg_2, global4.c)) && select(global4.c, arg_2, false)) | (true == var_1.a)), (-1i & ~(-u_input.a.x)) == (countOneBits(-2147483647i) ^ (-38576i | (var_1.b | -11002i))));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_3 {
    let var_0 = global4.c;
    global4 = Struct_3(global4.a, global4.a.a, false || !global4.c);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(15964u & min(76846u, 56212u << (u_input.c.x % 32u)), 26u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(arg_0, 26u)])))));
    global4 = Struct_3(Struct_2(Struct_1(firstTrailingBit(0u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1028f, 1266f, 1073f, -2374f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-236f, -721f, var_1, var_1)) - global4.a.b))), global4.b, !(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.b.x) & vec2<i32>(u_input.b.x, -2147483647i), vec2<i32>(-28826i, 1i)) > -1i));
    var var_2 = ~146087u;
    return Struct_3(global4.a, Struct_1(~56113u), !all(func_3(global4.a, Struct_1(global3.x), global4.c)) && true);
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: vec2<f32>) -> Struct_1 {
    global4 = func_2(_wgslsmith_dot_vec2_u32(~min(_wgslsmith_add_vec2_u32(u_input.c.yy, global3.yy), _wgslsmith_mod_vec2_u32(vec2<u32>(14349u, arg_1), vec2<u32>(37938u, global4.b.a))), ~_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(global3.x, 42011u)), min(global3.zy, u_input.c.xz))), global4.a.a);
    var var_0 = ~u_input.b;
    var_0 = u_input.b;
    var var_1 = arg_0;
    let var_2 = func_2(arg_1, func_2(global3.x, Struct_1(global3.x)).a.a);
    return global4.a.a;
}

fn func_4(arg_0: Struct_2) -> u32 {
    global2 = array<f32, 26>();
    global1 = array<Struct_4, 22>();
    let var_0 = abs(~vec2<u32>(136598u, u_input.c.x));
    var var_1 = vec3<i32>(2147483647i, -14644i, _wgslsmith_mult_i32(-48869i, abs(u_input.a.x))) >> (~u_input.c % vec3<u32>(32u));
    global4 = Struct_3(func_2(arg_0.a.a, func_2(~var_0.x, func_1(arg_0.b, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 37528u, 1u), vec3<u32>(825u, 55657u, 47801u)), _wgslsmith_div_vec2_f32(global4.a.b.xx, vec2<f32>(-1038f, global2[_wgslsmith_index_u32(14077u, 26u)])))).b).a, Struct_1(~71375u), any(select(!(!vec4<bool>(false, true, true, global0.x)), select(select(vec4<bool>(global4.c, false, global4.c, global4.c), vec4<bool>(true, false, true, global4.c), vec4<bool>(false, true, global0.x, false)), select(vec4<bool>(global0.x, true, false, true), vec4<bool>(global0.x, global4.c, global0.x, false), vec4<bool>(false, false, false, true)), func_3(global4.a, Struct_1(4294967295u), true)), true)));
    return global3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec4<u32>(global3.x | global3.x, (54797u ^ _wgslsmith_mult_u32(select(u_input.c.x, 1713u, true), 4294967295u)) >> (_wgslsmith_div_u32(global3.x, 22778u << (global4.a.a.a % 32u)) % 32u), 24414u, ~1u);
    global3 = vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(global3.x, 13798u, 1u, 13620u), ~vec4<u32>(6222u, 42557u, global3.x, 0u)), func_4(Struct_2(func_1(vec4<f32>(1304f, 1713f, 590f, global2[_wgslsmith_index_u32(39911u, 26u)]), 4294967295u, global4.a.b.zx), _wgslsmith_f_op_vec4_f32(-global4.a.b)))), (global3.x & global3.x) & ~(max(16873u, global4.b.a) << (1u % 32u)), ~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(40016u, 0u), ~vec2<u32>(3071u, global3.x))), global3.x);
    let var_0 = ~_wgslsmith_dot_vec3_u32(global3.xyw, ~(~global3.zxy));
    global3 = ~select(min(vec4<u32>(u_input.c.x, _wgslsmith_div_u32(global3.x, 81115u), func_2(var_0, Struct_1(4294967295u)).b.a, 1u), select(_wgslsmith_mult_vec4_u32(vec4<u32>(66015u, 25752u, 13406u, global3.x), vec4<u32>(0u, 26356u, 19497u, 1u)), abs(vec4<u32>(21393u, global4.a.a.a, global4.a.a.a, 4294967295u)), select(vec4<bool>(global0.x, global4.c, global4.c, global4.c), vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(global4.c, global0.x, global0.x, true)))), vec4<u32>(4294967295u, ~_wgslsmith_add_u32(global3.x, 60928u), _wgslsmith_mod_u32(43368u, abs(global3.x)), var_0), vec4<bool>(true, true, true, true));
    let var_1 = Struct_3(global4.a, Struct_1(4294967295u), global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.zy, _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, 64816u), 26u)], _wgslsmith_div_f32(global2[_wgslsmith_index_u32(var_1.a.a.a | var_0, 26u)], _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(u_input.c.x, 26u)])))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_1.a.b.xy)), var_1.a.b.yx))));
}

