struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_1, 4>;

var<private> global2: Struct_1 = Struct_1(vec3<u32>(0u, 28092u, 0u), vec2<u32>(14329u, 4294967295u), true);

var<private> global3: array<bool, 14>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(~(~vec3<u32>(global2.b.x, ~global2.b.x, global2.b.x)), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(global2.a.zx, firstLeadingBit(~global2.b), ~vec2<u32>(7343u, 48385u)), global2.a.xx), true);
    var var_1 = var_0;
    global3 = array<bool, 14>();
    let var_2 = -502f;
    var var_3 = var_0;
    return _wgslsmith_f_op_f32(abs(var_2));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: i32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -426f), -921f, _wgslsmith_f_op_f32(func_3()), -2229f)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) - 1026f) - _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(func_3()))));
    let var_2 = global1[_wgslsmith_index_u32(~((1u | _wgslsmith_add_u32(~global2.b.x, global2.b.x)) & global2.b.x), 4u)];
    var var_3 = arg_0.x;
    let var_4 = global0.x;
    return select(vec2<bool>(!all(!vec4<bool>(true, true, true, global3[_wgslsmith_index_u32(global2.b.x, 14u)])), var_2.c), select(!select(select(vec2<bool>(var_2.c, false), vec2<bool>(global3[_wgslsmith_index_u32(79358u, 14u)], true), false), select(vec2<bool>(global2.c, var_2.c), vec2<bool>(global3[_wgslsmith_index_u32(24855u, 14u)], global2.c), vec2<bool>(var_2.c, global3[_wgslsmith_index_u32(var_2.a.x, 14u)])), true), select(select(!vec2<bool>(var_2.c, global2.c), select(vec2<bool>(global3[_wgslsmith_index_u32(global2.b.x, 14u)], true), vec2<bool>(var_2.c, false), vec2<bool>(true, true)), false), select(select(vec2<bool>(false, false), vec2<bool>(global3[_wgslsmith_index_u32(global2.b.x, 14u)], global3[_wgslsmith_index_u32(0u, 14u)]), global3[_wgslsmith_index_u32(var_2.b.x, 14u)]), select(vec2<bool>(global3[_wgslsmith_index_u32(var_2.a.x, 14u)], global2.c), vec2<bool>(true, var_2.c), global3[_wgslsmith_index_u32(global2.b.x, 14u)]), true), vec2<bool>(!global3[_wgslsmith_index_u32(34436u, 14u)], true)), all(select(!vec3<bool>(false, false, global3[_wgslsmith_index_u32(var_2.b.x, 14u)]), vec3<bool>(global3[_wgslsmith_index_u32(1u, 14u)], global2.c, false), global2.c))), vec2<bool>(all(select(!vec3<bool>(global3[_wgslsmith_index_u32(var_2.b.x, 14u)], true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, var_2.c, var_2.c), vec3<bool>(true, var_2.c, var_2.c)), select(vec3<bool>(false, var_2.c, global3[_wgslsmith_index_u32(17083u, 14u)]), vec3<bool>(global2.c, true, false), vec3<bool>(var_2.c, global3[_wgslsmith_index_u32(23108u, 14u)], var_2.c)))), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, -2147483647i, arg_0.x), ~vec3<i32>(43034i, 55645i, global0.x)) < ~(~arg_2)));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = !(!func_2(firstLeadingBit(u_input.a) | _wgslsmith_mod_vec3_i32(vec3<i32>(0i, -1i, global0.x), u_input.a), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 0i, global0.x, -1i), abs(vec4<i32>(u_input.a.x, global0.x, 0i, global0.x)))));
    let var_1 = arg_1;
    global1 = array<Struct_1, 4>();
    let var_2 = global1[_wgslsmith_index_u32(1u, 4u)];
    global0 = ~(~firstLeadingBit(-_wgslsmith_div_vec2_i32(u_input.a.yx, u_input.a.zz)));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> vec2<u32> {
    global1 = array<Struct_1, 4>();
    global2 = global1[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-195f)), _wgslsmith_f_op_f32(f32(-1f) * -378f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1080f, arg_1))))), Struct_1(~vec3<u32>(select(4294967295u, 1u, global2.c), _wgslsmith_mod_u32(global2.b.x, 36624u), ~arg_0.a.x), reverseBits(global2.a.yz << (vec2<u32>(arg_0.b.x, arg_0.b.x) % vec2<u32>(32u))), true)).b.x, 4u)];
    global1 = array<Struct_1, 4>();
    var var_0 = all(vec2<bool>(arg_0.a.x == arg_0.a.x, any(select(select(vec3<bool>(false, arg_0.c, true), vec3<bool>(global2.c, global2.c, global2.c), vec3<bool>(arg_0.c, arg_0.c, global2.c)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, arg_0.c, false), false)))));
    let var_1 = 903f;
    return ~(vec2<u32>(arg_0.b.x, _wgslsmith_div_u32(global2.a.x, arg_0.a.x) ^ ~global2.a.x) >> (_wgslsmith_add_vec2_u32(vec2<u32>(select(4294967295u, arg_0.a.x, global2.c), ~arg_0.b.x), arg_0.a.xy) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~firstLeadingBit(firstLeadingBit(global2.a)), abs(func_4(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -267f)), Struct_1(global2.a, global2.a.zy, true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1633f))))), global2.c);
    global3 = array<bool, 14>();
    let var_1 = u_input.a.x;
    let var_2 = select(func_2(abs(u_input.a), -2155f, -_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, u_input.a.x, u_input.a.x, 25580i), vec4<i32>(var_1, global0.x, var_1, global0.x)) << (1u % 32u)), !vec2<bool>(true, select(true, select(global3[_wgslsmith_index_u32(1u, 14u)], false, var_0.c), true)), global3[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(2803u, var_0.b.x), ~min(~var_0.b.x, 0u)), 14u)]);
    let var_3 = !var_2;
    let var_4 = Struct_1(global2.a, func_4(global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(4294967295u, var_0.b.x << (40265u % 32u))), 4u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -702f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(452f * 945f))))), !global2.c);
    global1 = array<Struct_1, 4>();
    var var_5 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(554f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-196f, 880f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1913f * 719f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1940f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1328f)), _wgslsmith_div_f32(-276f, _wgslsmith_f_op_f32(803f - 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f)))))), max(var_1, _wgslsmith_div_i32(u_input.a.x, u_input.a.x)), var_1);
}

