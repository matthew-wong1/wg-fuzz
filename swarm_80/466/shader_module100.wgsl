struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 51601u;

var<private> global1: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(Struct_2(vec4<bool>(true, true, true, true), Struct_1(vec2<bool>(false, true), 67102u)), 0u), Struct_3(Struct_2(vec4<bool>(true, false, true, false), Struct_1(vec2<bool>(true, false), 25150u)), 0u), Struct_3(Struct_2(vec4<bool>(true, true, true, true), Struct_1(vec2<bool>(false, true), 47760u)), 23216u), Struct_3(Struct_2(vec4<bool>(false, true, false, false), Struct_1(vec2<bool>(true, true), 1u)), 40467u), Struct_3(Struct_2(vec4<bool>(true, true, false, false), Struct_1(vec2<bool>(true, true), 57040u)), 14734u), Struct_3(Struct_2(vec4<bool>(true, true, true, true), Struct_1(vec2<bool>(true, true), 69351u)), 70552u), Struct_3(Struct_2(vec4<bool>(true, false, true, true), Struct_1(vec2<bool>(false, true), 0u)), 0u), Struct_3(Struct_2(vec4<bool>(true, false, false, true), Struct_1(vec2<bool>(true, true), 49111u)), 0u), Struct_3(Struct_2(vec4<bool>(false, true, true, false), Struct_1(vec2<bool>(true, true), 0u)), 0u), Struct_3(Struct_2(vec4<bool>(true, false, false, true), Struct_1(vec2<bool>(false, false), 4715u)), 13077u), Struct_3(Struct_2(vec4<bool>(false, false, false, false), Struct_1(vec2<bool>(true, false), 0u)), 1u), Struct_3(Struct_2(vec4<bool>(true, false, true, true), Struct_1(vec2<bool>(true, true), 1u)), 80387u), Struct_3(Struct_2(vec4<bool>(false, true, false, true), Struct_1(vec2<bool>(false, true), 1u)), 0u), Struct_3(Struct_2(vec4<bool>(true, true, true, false), Struct_1(vec2<bool>(true, false), 65682u)), 138128u));

var<private> global2: array<u32, 17>;

var<private> global3: array<Struct_4, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<u32>) -> bool {
    var var_0 = vec2<bool>(!all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), all(vec3<bool>(true, true, true | any(vec4<bool>(true, true, true, true)))));
    var var_1 = Struct_2(!vec4<bool>(!select(false, var_0.x, true), var_0.x, true, all(select(vec3<bool>(true, false, true), vec3<bool>(var_0.x, true, false), true))), Struct_1(vec2<bool>((global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21243u, 17u)], 17u)] > 0u) & (var_0.x || false), true), u_input.d));
    var_0 = select(select(vec2<bool>(true, true), vec2<bool>(true, var_0.x), select(select(any(vec4<bool>(false, false, false, false)), var_0.x, false & var_1.a.x), !var_1.a.x, arg_0.x != arg_0.x)), select(var_1.b.a, vec2<bool>(var_1.b.a.x, true), 4419i >= u_input.e), !all(var_1.a));
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(arg_0.x, 17u)], _wgslsmith_mult_u32(arg_0.x | ~(4294967295u << (0u % 32u)), min(27794u, ~1u))), 20u)];
    let var_3 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.yw, firstLeadingBit(~vec2<u32>(var_1.b.b, min(var_2.d.b, var_1.b.b)))), 20u)];
    return all(!vec3<bool>(var_3.d.a.x, true, var_2.c));
}

fn func_3(arg_0: vec3<i32>) -> vec2<bool> {
    var var_0 = ~_wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(~vec4<u32>(34544u, 34317u, u_input.d, u_input.a.x), vec4<u32>(413u, u_input.a.x, global2[_wgslsmith_index_u32(645u, 17u)], 0u) >> (vec4<u32>(86935u, 4294967295u, global2[_wgslsmith_index_u32(4294967295u, 17u)], global2[_wgslsmith_index_u32(1u, 17u)]) % vec4<u32>(32u))), vec4<u32>(39443u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 17u)], 17u)] & u_input.a.x, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(47208u, 1u), global2[_wgslsmith_index_u32(4294967295u, 17u)], u_input.d), 17u)], ~global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.d), 17u)]));
    global3 = array<Struct_4, 20>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-665f, _wgslsmith_f_op_f32(floor(-103f)), _wgslsmith_f_op_f32(367f + 477f), _wgslsmith_f_op_f32(1000f - 888f))))));
    var var_2 = vec3<bool>(true, any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), true), vec3<bool>(true, true, false))), false);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(2087f)), _wgslsmith_f_op_f32(var_1.x + -516f)))) * var_1.x), -2253f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1596f))) - _wgslsmith_f_op_f32(sign(1000f)))));
    return !select(var_2.yz, !(!vec2<bool>(var_2.x, false)), any(!select(vec4<bool>(false, var_2.x, var_2.x, true), vec4<bool>(false, true, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x))));
}

fn func_1(arg_0: Struct_4) -> u32 {
    var var_0 = func_2(vec4<u32>(~75316u, 35169u, abs(u_input.a.x), 1u));
    let var_1 = arg_0.d;
    global0 = ~abs(_wgslsmith_div_u32(abs(_wgslsmith_mult_u32(var_1.b, arg_0.d.b)), 1u));
    var var_2 = var_1.a.x;
    let var_3 = select(func_3(-(min(u_input.c, vec3<i32>(u_input.b.x, u_input.c.x, u_input.e)) & u_input.c)), select(vec2<bool>(false, var_1.a.x && all(vec2<bool>(var_1.a.x, true))), func_3(countOneBits(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x))), true), select(arg_0.d.a, select(vec2<bool>(false, func_3(u_input.c).x), func_3(-vec3<i32>(-19232i, u_input.e, u_input.b.x)), arg_0.d.a), arg_0.b));
    return _wgslsmith_mult_u32(_wgslsmith_mod_u32(~4294967295u, 29393u), abs(abs(39063u))) << (var_1.b % 32u);
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_3 {
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 17>();
    var var_0 = func_4(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(func_1(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 17u)], 20u)]), 17u)], firstTrailingBit(23019u), global2[_wgslsmith_index_u32(func_1(global3[_wgslsmith_index_u32(1u, 20u)]), 17u)]), firstLeadingBit(min(vec3<u32>(4294967295u, u_input.a.x, global2[_wgslsmith_index_u32(u_input.d, 17u)]), vec3<u32>(global2[_wgslsmith_index_u32(u_input.d, 17u)], u_input.d, u_input.d))), ~min(vec3<u32>(4294967295u, 1u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), min(select(vec3<u32>(4294967295u, u_input.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 17u)]), vec3<u32>(u_input.d, global2[_wgslsmith_index_u32(4294967295u, 17u)], 36935u), vec3<bool>(true, false, false)), abs(vec3<u32>(u_input.d, global2[_wgslsmith_index_u32(0u, 17u)], 84206u))) ^ ~vec3<u32>(11887u, global2[_wgslsmith_index_u32(0u, 17u)], u_input.a.x)), 14u)], firstLeadingBit(-u_input.e));
    var var_1 = min(_wgslsmith_div_vec2_u32(max(select(u_input.a, u_input.a, var_0.a.b.a), select(vec2<u32>(41449u, 4294967295u), u_input.a, var_0.a.b.a.x)), u_input.a ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, u_input.a.x), u_input.a, u_input.a)), max(~vec2<u32>(0u, var_0.a.b.b), abs(max(u_input.a, u_input.a)))) << (~(~vec2<u32>(reverseBits(1u), countOneBits(101918u))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(firstTrailingBit(global2[_wgslsmith_index_u32(u_input.a.x, 17u)] & global2[_wgslsmith_index_u32(u_input.a.x, 17u)]), countOneBits(_wgslsmith_mod_u32(var_1.x, var_1.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(789f - 724f)), _wgslsmith_f_op_f32(abs(-1697f)))), -2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-991f, -2144f, -233f)))), vec3<f32>(1f, -158f, -1279f)))), u_input.b.x);
}

