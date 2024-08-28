struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: array<u32, 9> = array<u32, 9>(110986u, 4294967295u, 0u, 4294967295u, 66317u, 4294967295u, 76928u, 1316u, 32244u);

var<private> global2: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = ~1u << (select(global1[_wgslsmith_index_u32(max(global2.b, abs(1u)), 9u)] >> (global2.b % 32u), u_input.c.x, true) % 32u);
    var var_1 = global2.a;
    var var_2 = global0[_wgslsmith_index_u32(1u >> (((global1[_wgslsmith_index_u32(~(global2.b ^ global2.b), 9u)] << (select(1u, _wgslsmith_mult_u32(0u, 6047u), false) % 32u)) >> (~4294967295u % 32u)) % 32u), 11u)];
    var_2 = Struct_1(reverseBits(var_2.a), 0u, vec3<bool>(true, true, select(!(!var_2.c.x), any(vec3<bool>(var_2.c.x, global2.c.x, var_2.c.x)), false)), global2.d);
    global1 = array<u32, 9>();
    return true;
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = select(!select(vec4<bool>(!global2.c.x, arg_2, true, arg_3.b != 44941u), select(vec4<bool>(false, false, false, arg_2), !vec4<bool>(arg_3.c.x, global2.c.x, arg_2, true), select(vec4<bool>(global2.c.x, arg_2, true, false), vec4<bool>(arg_2, global2.c.x, true, true), arg_2)), _wgslsmith_f_op_f32(-global2.d) >= _wgslsmith_f_op_f32(max(arg_3.d, arg_3.d))), !(!(!(!vec4<bool>(false, arg_2, true, false)))), select(!(!vec4<bool>(global2.c.x, arg_2, global2.c.x, false)), vec4<bool>(any(vec3<bool>(true, true, false)), !(!global2.c.x), any(select(vec3<bool>(true, false, global2.c.x), global2.c, vec3<bool>(arg_2, false, arg_2))), global2.c.x), vec4<bool>(any(select(arg_3.c, arg_3.c, vec3<bool>(false, global2.c.x, arg_3.c.x))), func_3(u_input.d.x) && !arg_2, global2.c.x, select(!arg_2, !arg_2, any(vec4<bool>(false, false, arg_3.c.x, true))))));
    let var_1 = -(~16867i) << (arg_1 % 32u);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.d) - arg_3.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.d)))))), _wgslsmith_f_op_f32(-1328f - 130f));
    var var_3 = !any(vec2<bool>(true, true)) != !(all(!vec4<bool>(true, true, var_0.x, arg_3.c.x)) == func_3(-1i));
    global0 = array<Struct_1, 11>();
    return arg_0;
}

fn func_2() -> vec3<bool> {
    global1 = array<u32, 9>();
    global0 = array<Struct_1, 11>();
    global2 = Struct_1(vec2<i32>((u_input.d.x << (firstLeadingBit(global2.b) % 32u)) | firstTrailingBit(max(global2.a.x, 0i)), u_input.d.x), countOneBits(_wgslsmith_div_u32(firstLeadingBit(4294967295u), min(1204u, reverseBits(global1[_wgslsmith_index_u32(26989u, 9u)])))), !global2.c, _wgslsmith_f_op_f32(f32(-1f) * -273f));
    global0 = array<Struct_1, 11>();
    global2 = Struct_1(func_4(global2.a, 35222u, !func_3(-2708i), Struct_1(select(u_input.d.wy, global2.a, true || global2.c.x), u_input.c.x, !select(vec3<bool>(global2.c.x, global2.c.x, true), global2.c, global2.c), global2.d)), 0u, select(!vec3<bool>(25477u <= u_input.b.x, func_3(-42233i), !global2.c.x), !select(!vec3<bool>(false, global2.c.x, true), !global2.c, global2.d <= 1315f), !(!global2.c.x)), _wgslsmith_f_op_f32(global2.d * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.d, -363f)) * 612f)));
    return select(vec3<bool>(false, !(-1000f != _wgslsmith_f_op_f32(-global2.d)), global2.c.x), select(!select(select(global2.c, vec3<bool>(global2.c.x, false, false), false), global2.c, select(global2.c, global2.c, vec3<bool>(global2.c.x, true, global2.c.x))), select(vec3<bool>(all(vec4<bool>(global2.c.x, global2.c.x, false, global2.c.x)), true, any(vec4<bool>(global2.c.x, global2.c.x, false, global2.c.x))), !vec3<bool>(true, true, global2.c.x), true), global2.c), true);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    global0 = array<Struct_1, 11>();
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, global2.d))), vec2<f32>(-1434f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.d * global2.d))))))));
    var var_1 = global2.a.x;
    let var_2 = select(any(func_2()), !all(func_2().yx), !(!arg_1.c.x));
    global1 = array<u32, 9>();
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<i32>(1i, _wgslsmith_mult_i32(global2.a.x, -8601i)), _wgslsmith_mod_u32(_wgslsmith_add_u32(1u, ~global2.b), 92322u), func_1(Struct_1(vec2<i32>(-1i) * -vec2<i32>(global2.a.x, 2147483647i), reverseBits(1u), !global2.c, global2.d), global0[_wgslsmith_index_u32(u_input.b.x, 11u)]), -262f);
    let var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, global1[_wgslsmith_index_u32(global2.b, 9u)]), vec2<u32>(global2.b, global1[_wgslsmith_index_u32(59104u, 9u)]), vec2<u32>(0u, 13305u)), vec2<u32>(0u, ~u_input.c.x)), ~(~(~u_input.b.x))) << (vec2<u32>(max(select(~global1[_wgslsmith_index_u32(7790u, 9u)], 69357u & u_input.b.x, !var_0.c.x), 59523u), u_input.c.x) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d, _wgslsmith_f_op_f32(floor(global2.d)), global2.d))), vec2<i32>(global2.a.x, var_0.a.x), u_input.d, global2.d);
}

