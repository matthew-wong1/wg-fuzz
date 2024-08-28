struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
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

var<private> global0: vec3<i32> = vec3<i32>(-48241i, i32(-2147483648), 52057i);

var<private> global1: array<Struct_2, 9>;

var<private> global2: vec4<i32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, -416f, _wgslsmith_f_op_f32(-1479f * 816f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(420f, -428f)), _wgslsmith_f_op_f32(1131f * 189f), _wgslsmith_f_op_f32(1000f - 155f)) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(357f, -353f, 1218f)))))))));
    global1 = array<Struct_2, 9>();
    let var_1 = true;
    let var_2 = ~(~(~(~67222u ^ u_input.b)));
    let var_3 = 16472i;
    return global1[_wgslsmith_index_u32(var_2, 9u)];
}

fn func_3(arg_0: f32, arg_1: i32) -> vec3<i32> {
    global2 = ~vec4<i32>(global0.x, -firstTrailingBit(-1i), global0.x, -arg_1);
    var var_0 = Struct_1(u_input.a, select(vec3<bool>(!func_2().b.c, false, global2.x <= _wgslsmith_mod_i32(2147483647i, u_input.a)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), u_input.d > 4294967295u), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true), all(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), true))), select(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.d), vec2<u32>(1u, 76988u))), select(_wgslsmith_div_vec2_u32(~vec2<u32>(17757u, u_input.d), ~vec2<u32>(u_input.b, u_input.c)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u) << (vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u)), vec2<u32>(31087u, u_input.c)), vec2<bool>(false, true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true))));
    let var_1 = Struct_1(~(-46869i), !vec3<bool>(all(select(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, false), vec4<bool>(false, var_0.c, false, true), vec4<bool>(true, var_0.c, false, var_0.c))), var_0.b.x, var_0.c), true, ~func_2().b.d);
    var_0 = Struct_1(func_2().b.a ^ _wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(arg_1), max(-15841i, -1i), 691i, max(global0.x, global2.x)), -(~vec4<i32>(arg_1, var_0.a, global0.x, -23677i))), var_1.b, true, var_0.d);
    var var_2 = select(vec3<bool>(all(vec4<bool>(true, false & var_0.c, var_1.c == var_0.b.x, false || var_0.c)), false, !all(!vec4<bool>(true, var_0.c, var_1.b.x, var_1.b.x))), !vec3<bool>(any(!var_1.b.xx), _wgslsmith_add_u32(65919u, 17529u) >= _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.x, 5428u), vec2<u32>(u_input.d, var_1.d.x)), all(var_1.b)), !(!var_1.b.x));
    return ~vec3<i32>(abs(max(global0.x, 5078i)) >> (_wgslsmith_sub_u32(var_0.d.x, 0u) % 32u), global2.x, ~arg_1);
}

fn func_1() -> vec3<bool> {
    let var_0 = func_2();
    let var_1 = reverseBits(reverseBits(max(_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(var_0.b.d.x, 61042u, 109536u)), vec3<u32>(u_input.d, 4514u, 4294967295u)), vec3<u32>(abs(4294967295u), u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(53263u, u_input.c), vec2<u32>(var_0.b.d.x, 6274u))))));
    global0 = func_3(1000f, firstLeadingBit(1i << (var_0.b.d.x % 32u)));
    global1 = array<Struct_2, 9>();
    let var_2 = select(-global0.zx, _wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.a), global0.xx), vec2<bool>(true, true));
    return var_0.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(true, Struct_1(global2.x, func_1(), any(select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true))), ~(~vec2<u32>(1u, 1u) & (vec2<u32>(u_input.b, 24166u) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))))), !(!all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)))), func_2().d, -(~_wgslsmith_dot_vec3_i32(-global2.wxx, select(global2.ywz, global2.yzz, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-abs(_wgslsmith_mult_i32(global2.x, 2147483647i))), 2013f);
}

