struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(vec3<bool>(false, true, true), 0i, Struct_1(vec4<bool>(true, true, true, true), 2147483647i), vec4<bool>(false, true, true, true), vec3<i32>(1i, 9086i, 28415i)), Struct_2(vec3<bool>(false, false, false), -39059i, Struct_1(vec4<bool>(false, false, true, false), 1i), vec4<bool>(false, true, false, false), vec3<i32>(-30434i, 2147483647i, -17780i)), Struct_2(vec3<bool>(true, true, false), 31768i, Struct_1(vec4<bool>(true, false, false, false), -13628i), vec4<bool>(false, true, true, true), vec3<i32>(-612i, -1i, -16204i)), Struct_2(vec3<bool>(false, true, false), -1i, Struct_1(vec4<bool>(true, false, true, false), i32(-2147483648)), vec4<bool>(false, true, true, true), vec3<i32>(1i, -1i, 0i)), Struct_2(vec3<bool>(false, false, false), 0i, Struct_1(vec4<bool>(true, false, true, false), -33765i), vec4<bool>(true, true, true, false), vec3<i32>(1i, 0i, 2816i)), Struct_2(vec3<bool>(false, false, true), -61989i, Struct_1(vec4<bool>(false, false, false, true), -63604i), vec4<bool>(false, true, false, true), vec3<i32>(0i, 2147483647i, -20663i)), Struct_2(vec3<bool>(false, true, true), 26844i, Struct_1(vec4<bool>(false, true, false, false), -29411i), vec4<bool>(false, false, true, false), vec3<i32>(1i, 1i, 1i)), Struct_2(vec3<bool>(false, false, true), -1i, Struct_1(vec4<bool>(false, true, false, true), 1i), vec4<bool>(false, true, true, false), vec3<i32>(-1i, -7868i, i32(-2147483648))), Struct_2(vec3<bool>(true, true, false), -1i, Struct_1(vec4<bool>(true, false, false, true), 6016i), vec4<bool>(true, true, false, false), vec3<i32>(-8514i, 2147483647i, 0i)), Struct_2(vec3<bool>(true, true, false), 0i, Struct_1(vec4<bool>(true, false, false, false), 19371i), vec4<bool>(false, false, true, false), vec3<i32>(-33893i, -21408i, -29174i)), Struct_2(vec3<bool>(true, true, true), -28659i, Struct_1(vec4<bool>(false, true, true, true), -2794i), vec4<bool>(true, false, false, false), vec3<i32>(-12656i, 0i, 1i)), Struct_2(vec3<bool>(true, true, true), -1i, Struct_1(vec4<bool>(true, true, true, true), 34500i), vec4<bool>(true, true, true, false), vec3<i32>(23776i, 2147483647i, 0i)), Struct_2(vec3<bool>(true, false, true), -1i, Struct_1(vec4<bool>(true, true, true, true), 0i), vec4<bool>(true, false, true, false), vec3<i32>(0i, 51996i, 1i)), Struct_2(vec3<bool>(true, true, false), 0i, Struct_1(vec4<bool>(true, true, true, true), 1613i), vec4<bool>(false, true, true, true), vec3<i32>(-2941i, i32(-2147483648), 54994i)), Struct_2(vec3<bool>(true, false, true), 1i, Struct_1(vec4<bool>(true, true, false, false), -9468i), vec4<bool>(true, true, true, true), vec3<i32>(-1i, 0i, 1i)), Struct_2(vec3<bool>(false, true, false), -1i, Struct_1(vec4<bool>(true, true, false, true), -35643i), vec4<bool>(false, true, false, true), vec3<i32>(18140i, -24750i, -22860i)), Struct_2(vec3<bool>(true, false, false), 2147483647i, Struct_1(vec4<bool>(false, false, false, true), -21772i), vec4<bool>(false, false, true, true), vec3<i32>(2147483647i, -1i, -30230i)), Struct_2(vec3<bool>(true, false, true), 0i, Struct_1(vec4<bool>(false, true, false, true), i32(-2147483648)), vec4<bool>(false, true, false, false), vec3<i32>(2147483647i, 2147483647i, 12590i)), Struct_2(vec3<bool>(false, true, false), -1982i, Struct_1(vec4<bool>(true, true, false, false), 46553i), vec4<bool>(false, false, false, false), vec3<i32>(1i, -22591i, 2147483647i)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec3<i32>, arg_3: vec2<f32>) -> u32 {
    global0 = array<Struct_2, 19>();
    global0 = array<Struct_2, 19>();
    return 18409u;
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    global0 = array<Struct_2, 19>();
    let var_0 = global0[_wgslsmith_index_u32(31888u, 19u)];
    global0 = array<Struct_2, 19>();
    global0 = array<Struct_2, 19>();
    let var_1 = arg_0;
    return var_1.d;
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> u32 {
    global0 = array<Struct_2, 19>();
    global0 = array<Struct_2, 19>();
    var var_0 = Struct_2(arg_0.d.xzz, arg_0.b, Struct_1(vec4<bool>(true, (0i <= arg_0.e.x) & true, any(!vec2<bool>(arg_0.d.x, arg_0.a.x)), arg_0.a.x), -1i), select(func_3(Struct_2(vec3<bool>(true, true, false), arg_0.b >> (arg_1 % 32u), arg_0.c, !arg_0.d, arg_0.e)), !func_3(Struct_2(vec3<bool>(true, arg_0.d.x, true), -1i, arg_0.c, arg_0.c.a, vec3<i32>(-4616i, -2147483647i, arg_0.e.x))), select(!(!arg_0.d), !arg_0.d, false)), select(vec3<i32>(~(~arg_0.b), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b, arg_0.e.x, arg_0.e.x, 0i), vec4<i32>(arg_0.b, 18376i, 21275i, 2147483647i)), _wgslsmith_mult_i32(arg_0.b, arg_0.e.x)), (arg_0.e.x << (1u % 32u)) << (max(u_input.a.x, u_input.b.x) % 32u)), _wgslsmith_div_vec3_i32(countOneBits(arg_0.e), -(~vec3<i32>(194i, 18502i, -80814i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-756f, 1940f, true)) - _wgslsmith_div_f32(-1627f, -1370f)) != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1623f - -1029f)))));
    let var_1 = ~u_input.b.x;
    global0 = array<Struct_2, 19>();
    return arg_1;
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    let var_0 = arg_0.c.e.yx;
    global0 = array<Struct_2, 19>();
    var var_1 = !vec2<bool>(arg_0.c.c.a.x, (-2147483647i <= arg_0.c.e.x) | true);
    global0 = array<Struct_2, 19>();
    var_1 = arg_0.c.d.yw;
    return Struct_3(abs(~(~(~arg_0.a))), func_1(-1932f, -380f, ~firstLeadingBit(vec3<i32>(1i, arg_0.c.b, -33364i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-394f, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1185f, -1061f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1291f, 1196f), vec2<f32>(-1550f, -700f), vec2<bool>(false, var_1.x))))))), Struct_2(arg_0.c.d.zww, ~arg_0.c.b, arg_0.c.c, arg_0.c.c.a, arg_0.c.e >> (~vec3<u32>(9507u, arg_0.a.x, u_input.b.x) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(0i, -34605i), vec2<i32>(1i, max(21317i, 2147483647i))), vec2<i32>(i32(-1i) * -1306i, _wgslsmith_mod_i32(2324i, abs(2147483647i)))), 0i);
    let var_1 = func_4(Struct_3(vec4<u32>(u_input.d.x, func_1(_wgslsmith_f_op_f32(select(-457f, -164f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1033f), vec3<i32>(var_0.x, 0i, 20594i) & vec3<i32>(1i, 93972i, var_0.x), vec2<f32>(1171f, -339f)), func_2(global0[_wgslsmith_index_u32(~u_input.c, 19u)], 1u), u_input.a.x), u_input.c, Struct_2(func_3(global0[_wgslsmith_index_u32(51815u, 19u)]).zzz, var_0.x, Struct_1(func_3(global0[_wgslsmith_index_u32(u_input.d.x, 19u)]), -var_0.x), vec4<bool>(true, true, true, true), -_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -2147483647i, var_0.x), vec3<i32>(12441i, var_0.x, var_0.x)))));
    let var_2 = vec2<i32>(var_1.c.b, _wgslsmith_sub_i32(~(~(-14291i) & -var_1.c.e.x), _wgslsmith_sub_i32(abs(var_0.x & 3589i), -(var_1.c.b ^ var_1.c.e.x))));
    var var_3 = vec3<i32>(-71471i, var_2.x, var_0.x) >> (var_1.a.zzw % vec3<u32>(32u));
    let var_4 = func_4(func_4(var_1)).c;
    var var_5 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(1f)))), _wgslsmith_f_op_f32(round(891f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -543f)))), 252f)));
    var_3 = var_1.c.e;
    var var_6 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(337f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.x + var_5.x) + _wgslsmith_f_op_f32(round(-2094f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(938f, var_5.x)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1302f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_5.x))), _wgslsmith_f_op_f32(ceil(1205f))) - vec3<f32>(_wgslsmith_f_op_f32(-165f - _wgslsmith_f_op_f32(abs(-1747f))), _wgslsmith_f_op_f32(f32(-1f) * -1268f), -129f)));
    var var_7 = func_4(Struct_3(var_1.a, ~abs(u_input.a.x), var_1.c)).a.zzx;
    let x = u_input.a;
    s_output = StorageBuffer(var_7.x >> (138053u % 32u), var_1.a & vec4<u32>(23792u, 1u, abs(u_input.b.x), var_1.b));
}

