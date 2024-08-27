struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: f32,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<bool>(false, false, false), vec2<f32>(-1628f, 445f), 2004f, 1u, 2147483647i);

var<private> global1: Struct_1 = Struct_1(471f, 1u, vec4<u32>(14004u, 1u, 30180u, 0u), -1478f, vec2<u32>(1u, 4294967295u));

var<private> global2: Struct_1 = Struct_1(-1032f, 0u, vec4<u32>(4294967295u, 0u, 4294967295u, 34094u), -148f, vec2<u32>(27709u, 42948u));

var<private> global3: array<Struct_2, 29>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: i32) -> vec4<bool> {
    let var_0 = Struct_2(global0.a, vec2<f32>(global2.a, arg_1.x), _wgslsmith_f_op_f32(-global2.a), arg_0.x, ~firstLeadingBit(26583i));
    let var_1 = select(vec3<bool>(all(!vec4<bool>(var_0.a.x, true, false, false)) == all(global0.a.zx), !var_0.a.x, !any(!vec2<bool>(var_0.a.x, global0.a.x))), vec3<bool>(!all(var_0.a), !all(vec2<bool>(global0.a.x, var_0.a.x)), global0.a.x), !select(select(global0.a, vec3<bool>(true, var_0.a.x, var_0.a.x), !global0.a), vec3<bool>(all(vec4<bool>(false, false, global0.a.x, false)), var_0.a.x, global0.a.x), (u_input.a >> (79342u % 32u)) >= firstLeadingBit(31951i)));
    global3 = array<Struct_2, 29>();
    global2 = Struct_1(-1104f, ~(~(~1u)), global2.c, var_0.c, global2.e);
    var var_2 = global3[_wgslsmith_index_u32(reverseBits(arg_0.x), 29u)];
    return select(vec4<bool>(!(!all(var_1.xz)), ~1u < var_0.d, global0.a.x, false), vec4<bool>(all(vec4<bool>(var_0.a.x, true, var_1.x, false)), false, !(true & all(vec4<bool>(true, true, true, false))), false), vec4<bool>(true, !(var_0.a.x || all(vec3<bool>(true, true, var_2.a.x))), true, any(select(select(vec4<bool>(false, true, var_0.a.x, var_1.x), vec4<bool>(var_2.a.x, var_0.a.x, global0.a.x, var_1.x), vec4<bool>(false, false, true, var_0.a.x)), select(vec4<bool>(false, global0.a.x, false, var_0.a.x), vec4<bool>(var_1.x, true, true, true), vec4<bool>(global0.a.x, global0.a.x, false, var_1.x)), false))));
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: vec3<i32>) -> vec2<f32> {
    return vec2<f32>(global2.d, _wgslsmith_div_f32(global0.c, -279f));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_4(Struct_3(abs(~abs(vec2<i32>(1i, u_input.a))), _wgslsmith_f_op_f32(-913f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) * _wgslsmith_f_op_f32(f32(-1f) * -2182f)))), !global0.a.xx, 4294967295u, ~vec3<u32>(~(global0.d | global0.d), _wgslsmith_dot_vec4_u32(select(vec4<u32>(global2.e.x, global2.b, global2.c.x, 1u), global1.c, vec4<bool>(false, global0.a.x, global0.a.x, true)), global1.c ^ vec4<u32>(0u, u_input.b, 4294967295u, 4294967295u)), global2.b ^ _wgslsmith_mod_u32(global1.b, 47926u)), -529f);
    global3 = array<Struct_2, 29>();
    global0 = global3[_wgslsmith_index_u32(firstTrailingBit(~global2.e.x), 29u)];
    global0 = global3[_wgslsmith_index_u32(~(1u | global2.b) >> (11983u % 32u), 29u)];
    global3 = array<Struct_2, 29>();
    return Struct_2(!select(select(select(vec3<bool>(true, false, false), global0.a, true), vec3<bool>(global0.a.x, var_0.b.x, false), true), global0.a, global0.a), _wgslsmith_f_op_vec2_f32(global0.b * _wgslsmith_f_op_vec2_f32(func_4(max(_wgslsmith_mod_u32(u_input.b, var_0.c), u_input.b), !func_3(global2.c.wwx, vec2<f32>(global0.c, global1.a), u_input.a), _wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.a, -6336i, 0i)), -vec3<i32>(u_input.a, u_input.a, 0i))))), -626f, global1.c.x, global0.e);
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec4<bool>) -> Struct_2 {
    global0 = func_2();
    global2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.d, 1f)) - -286f)), 24033u, global1.c, global0.c, vec2<u32>(~max(0u, ~1u), ~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b, u_input.b, 4294967295u, 9710u)), abs(vec4<u32>(61746u, 0u, u_input.b, global2.b)))));
    global2 = Struct_1(func_2().b.x, _wgslsmith_div_u32(abs(3732u) >> (max(_wgslsmith_clamp_u32(global2.c.x, global1.c.x, 85724u), global1.b | global2.e.x) % 32u), _wgslsmith_clamp_u32(global0.d, 0u, global1.c.x)), global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-434f - 1000f) + global1.a), global2.e);
    var var_0 = Struct_1(_wgslsmith_div_f32(116f, 437f), global2.b << (global1.c.x % 32u), vec4<u32>(global1.e.x, global1.e.x, countOneBits(_wgslsmith_add_u32(0u, ~1u)), 4294967295u), -1000f, global1.c.ww);
    var var_1 = global0.b;
    return global3[_wgslsmith_index_u32(abs(~(~(~global2.c.x))), 29u)];
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    var var_0 = vec3<bool>(false, true, global0.a.x);
    return Struct_3(firstLeadingBit(vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(-28974i, 0i, arg_0.e))), -385f);
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: f32, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(710f, -410f), _wgslsmith_f_op_f32(abs(-230f)), _wgslsmith_f_op_f32(max(-1241f, 1000f)), -1000f)))));
    var var_1 = Struct_4(func_5(arg_3), arg_0.zz, reverseBits(arg_3.d), select(global2.c.zzy, min(max(global2.c.xwx, vec3<u32>(global2.b, 0u, 4294967295u)), ~global2.c.www) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0.d), global1.c.yw), arg_3.d, 100354u) % vec3<u32>(32u)), select(func_1(Struct_3(vec2<i32>(arg_3.e, arg_3.e), arg_1.b), vec3<i32>(51186i, 1i, u_input.a), vec4<bool>(global0.a.x, global0.a.x, true, true)).a, arg_0, !(!arg_0.x))), 126f);
    let var_2 = abs(-_wgslsmith_clamp_i32(0i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(global0.e, arg_3.e), ~u_input.a), -1i));
    var var_3 = reverseBits(vec4<i32>(-1625i, -2715i, _wgslsmith_mod_i32(-(i32(-1i) * -6753i), -2147483647i), ~(~(-1i))));
    let var_4 = vec3<f32>(arg_2, arg_1.b, -266f);
    return _wgslsmith_div_i32(global0.e, -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(global1.b, 4294967295u, global1.e.x) >> (global0.d % 32u), ~global2.b), max(abs(global1.e.x), ~0u), ~(~15851u) | max(firstLeadingBit(62896u), firstTrailingBit(global1.c.x)), 0u), global1.c);
    var var_1 = global1.a;
    var var_2 = Struct_2(!vec3<bool>(2147483647i > ~u_input.a, all(vec3<bool>(true, true, global0.a.x)), global0.a.x), global0.b, 1021f, ~_wgslsmith_add_u32(~firstTrailingBit(global2.e.x), abs(var_0.x | 0u)), func_6(!global0.a, func_5(func_1(Struct_3(vec2<i32>(u_input.a, global0.e), global0.c), vec3<i32>(u_input.a, 24856i, 4462i), !vec4<bool>(global0.a.x, global0.a.x, false, global0.a.x))), global1.a, global3[_wgslsmith_index_u32(firstLeadingBit(~global1.e.x), 29u)]));
    global0 = func_2();
    global0 = Struct_2(!func_3(_wgslsmith_add_vec3_u32(global2.c.xzw, abs(vec3<u32>(23623u, 0u, 4294967295u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.x, global0.c) + var_2.b)), 1i).yzw, vec2<f32>(var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(313f * -663f), _wgslsmith_f_op_f32(-var_2.c), 1900f > global1.d)))), _wgslsmith_f_op_f32(-var_2.c), _wgslsmith_mod_u32(firstLeadingBit(40814u), reverseBits(4294967295u) >> (firstTrailingBit(~0u) % 32u)), 0i);
    let var_3 = Struct_1(global0.b.x, 4294967295u, ~(~firstTrailingBit(reverseBits(vec4<u32>(40628u, 4294967295u, global0.d, 0u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.d, 321f) + global1.a))) * 522f), var_0.wy);
    let var_4 = Struct_1(var_2.b.x, 41466u, global1.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(29177u | global1.e.x, !vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, false), -vec3<i32>(var_2.e, var_2.e, global0.e))).x))), var_0.yw << (_wgslsmith_mod_vec2_u32(vec2<u32>(var_3.c.x, ~global2.c.x), global2.e) % vec2<u32>(32u)));
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(924f - global0.c) - _wgslsmith_f_op_f32(-823f * -1671f)) - _wgslsmith_f_op_f32(max(-453f, -732f))), 4294967295u);
}

