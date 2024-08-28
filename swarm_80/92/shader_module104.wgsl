struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_1, 25>;

var<private> global2: vec3<bool> = vec3<bool>(true, false, true);

var<private> global3: array<f32, 22>;

var<private> global4: array<bool, 10> = array<bool, 10>(true, false, true, true, false, false, false, false, false, true);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: bool) -> vec3<bool> {
    global1 = array<Struct_1, 25>();
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 25u)];
    global2 = vec3<bool>(all(!(!global2.yx)) & false, !select(arg_0.c, arg_0.b.x, all(vec2<bool>(arg_2, arg_2))), false);
    let var_1 = any(global2.zy);
    var var_2 = 342f;
    return select(vec3<bool>(var_1, global2.x & all(!vec4<bool>(false, arg_0.b.x, arg_0.c, true)), !var_1), !vec3<bool>(true, !arg_0.c && select(false, true, var_0.b.x), false), !select(select(vec3<bool>(true, true, true), !vec3<bool>(false, var_1, var_1), vec3<bool>(global4[_wgslsmith_index_u32(u_input.a, 10u)], false, global2.x)), !select(vec3<bool>(false, true, global4[_wgslsmith_index_u32(arg_0.a.x, 10u)]), vec3<bool>(var_0.b.x, false, false), vec3<bool>(true, false, true)), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false)));
}

fn func_2(arg_0: Struct_2) -> vec4<u32> {
    let var_0 = ~vec3<i32>(6608i, countOneBits(-25302i | global0.x), abs(-2147483647i ^ arg_0.b.d.x));
    var var_1 = any(arg_0.b.b);
    global1 = array<Struct_1, 25>();
    var var_2 = select(vec2<u32>(u_input.a, 4294967295u), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.a, 0u), ~u_input.c.x), vec2<u32>(10492u, 79221u)), u_input.c), all(vec3<bool>(false, true, true)));
    var var_3 = Struct_4(false, ~select(reverseBits(vec3<u32>(14734u, 4294967295u, 0u)), _wgslsmith_add_vec3_u32(vec3<u32>(108840u, 4294967295u, u_input.a), vec3<u32>(u_input.c.x, var_2.x, var_2.x)) << (~vec3<u32>(64786u, 35266u, u_input.c.x) % vec3<u32>(32u)), true), select(vec3<i32>(~_wgslsmith_dot_vec2_i32(u_input.b.zy, global0.ww), countOneBits(global0.x), reverseBits(~arg_0.b.d.x)), -(~(-vec3<i32>(-6506i, global0.x, 2147483647i))), func_3(Struct_5(firstLeadingBit(vec4<u32>(4294967295u, u_input.a, var_2.x, u_input.a)), global2.zy, any(vec4<bool>(true, global4[_wgslsmith_index_u32(var_2.x, 10u)], false, false))), var_2.x, global2.x)), arg_0.c, Struct_1(arg_0.b.a, select(vec2<bool>(true && global4[_wgslsmith_index_u32(4294967295u, 10u)], false), select(vec2<bool>(arg_0.d.b.x, global4[_wgslsmith_index_u32(u_input.c.x, 10u)]), vec2<bool>(global2.x, false), global2.x), vec2<bool>(false, func_3(Struct_5(vec4<u32>(var_2.x, u_input.c.x, u_input.c.x, u_input.c.x), global2.xy, arg_0.d.b.x), 49999u, arg_0.b.b.x).x)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~4294967295u, 22u)]), vec3<i32>(-2147483647i, arg_0.d.d.x, reverseBits(-arg_0.d.a.x))));
    return vec4<u32>(56025u, u_input.a, _wgslsmith_div_u32(~(~_wgslsmith_sub_u32(1u, var_2.x)), ~(~var_3.b.x)), 1u);
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> bool {
    let var_0 = false;
    let var_1 = ~(select(vec4<u32>(_wgslsmith_add_u32(u_input.a, u_input.a), ~1u, ~u_input.a, _wgslsmith_sub_u32(3563u, 0u)), vec4<u32>(32931u, u_input.c.x, min(u_input.a, u_input.c.x), 26547u >> (u_input.a % 32u)), true) << (_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(34274u, 18450u, u_input.c.x, 28249u), min(vec4<u32>(32852u, u_input.a, u_input.a, u_input.a), vec4<u32>(83034u, 1u, 1u, 31799u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 8432u, u_input.a, 0u), vec4<u32>(u_input.c.x, u_input.a, 24728u, 0u))), _wgslsmith_sub_vec4_u32(func_2(Struct_2(arg_1.a.c, Struct_1(vec3<i32>(-2147483647i, -16587i, arg_1.d), arg_1.a.b, 544f, arg_1.a.d), vec3<bool>(true, true, global2.x), Struct_1(global0.yyy, vec2<bool>(false, global2.x), -749f, global0.xxy))), vec4<u32>(28278u, u_input.c.x, u_input.c.x, 1u) & vec4<u32>(45012u, 49159u, u_input.c.x, u_input.c.x))) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_clamp_i32(-34558i, 14575i, abs(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(arg_1.c, u_input.b.x)), _wgslsmith_div_vec2_i32(vec2<i32>(arg_1.a.d.x, 0i), vec2<i32>(arg_1.a.a.x, -15947i)))) & arg_1.d);
    var var_3 = select(!(!(!(!vec3<bool>(global2.x, var_0, true)))), vec3<bool>(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.a, 1u), 10u)], var_0, global3[_wgslsmith_index_u32(1u, 22u)] >= _wgslsmith_div_f32(-2053f, arg_0)), select(!(!vec3<bool>(global2.x, global4[_wgslsmith_index_u32(var_1.x, 10u)], true)), func_3(Struct_5(_wgslsmith_div_vec4_u32(vec4<u32>(68393u, u_input.c.x, var_1.x, 6236u), vec4<u32>(50409u, var_1.x, 24542u, 1u)), select(global2.zz, arg_1.a.b, global4[_wgslsmith_index_u32(u_input.a, 10u)]), true), abs(4294967295u), false), arg_1.a.c > _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_1.x, 22u)])));
    var var_4 = arg_1;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!vec3<bool>(func_1(_wgslsmith_f_op_f32(round(1199f)), Struct_3(Struct_1(vec3<i32>(2147483647i, global0.x, global0.x), global2.zz, global3[_wgslsmith_index_u32(u_input.a, 22u)], u_input.b), vec4<i32>(u_input.d.x, -1i, 43991i, -62251i), u_input.b.x, -390i)), false, any(!vec3<bool>(false, global2.x, false))));
    var_0 = !global2.x;
    var var_1 = global4[_wgslsmith_index_u32(1u, 10u)];
    global4 = array<bool, 10>();
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(min(vec2<u32>(abs(45080u), ~(~u_input.c.x)), u_input.c), ~vec3<u32>(1u, 0u, firstLeadingBit(1u)), ~vec4<i32>(0i, u_input.d.x, abs(~global0.x), abs(45814i)), vec2<u32>(u_input.a, reverseBits(firstLeadingBit(14636u))));
}

