struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
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

var<private> global0: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(49249u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 0u, 84246u), vec3<u32>(0u, 35571u, 92909u), vec3<u32>(45157u, 0u, 67146u), vec3<u32>(4294967295u, 2007u, 2163u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(22552u, 50639u, 0u), vec3<u32>(1u, 4294967295u, 76111u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(64516u, 62618u, 63103u), vec3<u32>(1u, 33498u, 4294967295u), vec3<u32>(1u, 53405u, 44876u), vec3<u32>(1u, 1u, 0u), vec3<u32>(25531u, 42901u, 1u), vec3<u32>(1u, 26375u, 1u), vec3<u32>(1u, 1u, 54376u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(63870u, 1u, 1u), vec3<u32>(2578u, 48u, 1u));

var<private> global1: array<Struct_3, 4>;

var<private> global2: Struct_3;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>) -> vec4<f32> {
    global2 = global1[_wgslsmith_index_u32(arg_2.x ^ 1u, 4u)];
    var var_0 = firstLeadingBit((select(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, -2147483647i), vec2<i32>(-35876i, 79014i)), global2.e.c.zy, false) | global2.e.c.zx) | (global2.e.c.zy >> (~vec2<u32>(arg_2.x, arg_1) % vec2<u32>(32u))));
    var var_1 = -global2.e.c.zz;
    var_0 = global2.e.c.zx;
    let var_2 = Struct_3(50367i, Struct_1(!arg_0.a, global2.e.d.d.x, arg_0.c, ~vec2<u32>(arg_0.b, arg_1) << (~_wgslsmith_add_vec2_u32(vec2<u32>(global2.e.d.d.x, arg_0.d.x), vec2<u32>(1u, 6959u)) % vec2<u32>(32u))), global2.c, vec2<bool>(any(!vec3<bool>(false, global2.c.c, true)), arg_2.x <= (4294967295u & _wgslsmith_clamp_u32(1u, arg_1, 1u))), Struct_2(Struct_1(arg_0.a, u_input.b ^ arg_2.x, global2.d.x, vec2<u32>(0u, 1u | global2.c.d.x)), _wgslsmith_f_op_f32(global2.e.b - global2.e.b), vec3<i32>(-_wgslsmith_div_i32(var_0.x, global2.a), 11758i, _wgslsmith_div_i32(_wgslsmith_div_i32(global2.a, -38324i), 1i)), Struct_1(true, _wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, u_input.c.x), u_input.c, false), abs(vec2<u32>(1u, 39187u))), (arg_0.c != arg_0.c) || global2.d.x, ~_wgslsmith_mult_vec2_u32(arg_0.d, arg_0.d))));
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.e.b, var_2.e.b, var_2.e.b, 295f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(523f, 462f, global2.e.b, -1480f))))))));
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: vec4<bool>, arg_3: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_3(global2.b, abs(~(12195u << (_wgslsmith_clamp_u32(62914u, arg_0.e.a.d.x, global2.b.b) % 32u))), ~(~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~arg_0.b.d.x, select(0u, global2.e.d.b, false)), 21u)])));
    var var_1 = global2.b.d;
    global2 = Struct_3(~firstTrailingBit(-53i) >> (~u_input.b % 32u), global2.e.d, global2.c, global2.d, arg_0.e);
    global1 = array<Struct_3, 4>();
    let var_2 = vec2<i32>(_wgslsmith_sub_i32(~(-abs(-44394i)), ~(-37625i) ^ ~min(2147483647i, arg_3)), u_input.d);
    return Struct_2(arg_0.e.d, var_0.x, global2.e.c, arg_0.b);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec2<i32>, arg_3: f32) -> Struct_3 {
    let var_0 = arg_0;
    let var_1 = true;
    global1 = array<Struct_3, 4>();
    var var_2 = Struct_2(func_2(global1[_wgslsmith_index_u32(4448u, 4u)], (_wgslsmith_f_op_f32(global2.e.b * 1676f) < _wgslsmith_f_op_f32(abs(global2.e.b))) && all(select(global2.d, vec2<bool>(arg_0.a.c, true), var_1)), vec4<bool>(global2.c.d.x <= arg_0.a.b, true & (global2.b.a != true), select(var_0.b > global2.e.b, false, func_2(global1[_wgslsmith_index_u32(4294967295u, 4u)], global2.d.x, vec4<bool>(true, global2.e.a.a, var_1, false), 0i).d.c), var_0.a.c), ~(-arg_2.x | (u_input.d << (u_input.b % 32u)))).a, arg_0.b, ~_wgslsmith_clamp_vec3_i32(~(~vec3<i32>(1i, global2.e.c.x, -2147483647i)), min(var_0.c, vec3<i32>(arg_2.x, 66625i, -1i)) & vec3<i32>(arg_2.x, -53540i, -25827i), countOneBits(~vec3<i32>(-2147483647i, 63258i, u_input.d))), Struct_1(!(!(global2.b.a | true)), ~reverseBits(~u_input.a.x), var_1, global2.c.d));
    var var_3 = _wgslsmith_f_op_f32(-global2.e.b);
    return global1[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(~global2.b.d << (abs(arg_0.d.d) % vec2<u32>(32u)), ~arg_0.d.d) | countOneBits(var_0.d.b)), 4u)];
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = Struct_3(u_input.d, global2.b, Struct_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(global2.b.b, u_input.b), vec2<u32>(global2.c.d.x, global2.e.a.d.x)) > (_wgslsmith_sub_u32(0u, global2.b.b) >> (1u % 32u)), countOneBits(u_input.b) | 51378u, all(vec2<bool>(!global2.c.a, arg_0)), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(53978u, 4294967295u), global2.b.d), firstLeadingBit(~global2.b.d))), !select(global2.d, vec2<bool>(true, true), true), global2.e);
    var var_1 = ~global2.a;
    global2 = func_4(func_2(global1[_wgslsmith_index_u32(global2.b.b, 4u)], arg_0, vec4<bool>(any(select(vec3<bool>(global2.c.c, global2.d.x, global2.e.a.c), vec3<bool>(true, false, global2.c.c), vec3<bool>(true, arg_0, true))), var_0.c.c, true, global2.d.x && !arg_0), global2.a), 27960u, ~(~(-max(global2.e.c.xz, var_0.e.c.zx))), func_2(var_0, !var_0.e.d.a, vec4<bool>(global2.e.a.c || true, true, false, true), _wgslsmith_add_i32(u_input.d, var_0.e.c.x)).b);
    global1 = array<Struct_3, 4>();
    let var_2 = vec4<i32>(-5806i, 25378i, 2147483647i, -1i | _wgslsmith_mod_i32(-34556i, global2.a));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-global2.e.b) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.e.b - var_0.e.b)), 4294967295u, false, (min(vec2<u32>(var_0.c.b, var_0.e.d.b), global2.c.d) << (vec2<u32>(var_0.b.b, u_input.b) % vec2<u32>(32u))) & reverseBits(var_0.e.a.d)), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(_wgslsmith_f_op_f32(round(global2.e.b)) < 630f, 10557u, false, ~vec2<u32>(45402u, 4294967295u) & max(u_input.a, vec2<u32>(var_0.b.b, 0u))), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(24034u, 66199u, global2.b.d.x), vec3<u32>(u_input.c.x, var_0.c.d.x, u_input.b)), u_input.b), _wgslsmith_clamp_u32(~u_input.c.x, global2.e.a.d.x, 1u), min(~1u, var_0.e.d.d.x)), global0[_wgslsmith_index_u32(~58645u, 21u)] ^ vec3<u32>(firstTrailingBit(var_0.e.a.d.x), _wgslsmith_mod_u32(4294967295u, 66468u), abs(0u)))).x, ~(vec3<i32>(-3195i, abs(global2.e.c.x), var_0.a) | select(vec3<i32>(u_input.d, u_input.d, var_0.a) | vec3<i32>(var_0.e.c.x, global2.a, var_0.e.c.x), ~var_0.e.c, true)), var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1[_wgslsmith_index_u32(~55776u, 4u)];
    var var_0 = func_1(select(all(vec3<bool>(global2.d.x, any(vec3<bool>(global2.d.x, false, global2.b.a)), all(vec2<bool>(global2.c.c, false)))), false, true));
    var var_1 = 176f;
    var var_2 = ~(~u_input.d);
    var var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-306f)), -990f, global2.e.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(var_0.d, abs(u_input.a.x), vec3<u32>(u_input.c.x, 4915u, 13142u))).wxz)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.e.b, var_0.b, global2.e.b)), vec3<f32>(var_0.b, global2.e.b, var_0.b), vec3<bool>(false, true, var_0.d.a))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1117f, -265f, var_0.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, 1990f)), false)))));
    global0 = array<vec3<u32>, 21>();
    var var_4 = global2.e;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global2.e.c.xy, vec2<i32>(-11801i, global2.a)), 0i), _wgslsmith_mod_i32(1i, 23630i), -1i, -2147483647i)));
}

