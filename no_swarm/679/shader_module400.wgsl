struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_3, 19>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    return 15868i >> (_wgslsmith_dot_vec3_u32(((u_input.c.wzw | u_input.c.zxx) | u_input.c.xzx) | ~(u_input.c.ywy << (u_input.c.xzw % vec3<u32>(32u))), u_input.c.wxw) % 32u);
}

fn func_2() -> Struct_3 {
    var var_0 = u_input.a;
    let var_1 = global0.a;
    global1 = array<Struct_3, 19>();
    let var_2 = select(!(!vec3<bool>(var_1.c.x, true, select(true, var_1.c.x, true))), select(global0.a.c.xww, !vec3<bool>(all(var_1.c), true == global0.b.x, false), !(!(!var_1.c.x))), vec3<bool>(true & !global0.a.c.x, true, select(any(global0.a.c), _wgslsmith_f_op_f32(-var_1.a.x) >= _wgslsmith_f_op_f32(-var_1.b.x), global0.a.c.x)));
    var var_3 = Struct_2(-vec4<i32>(~u_input.b.x, func_3(), reverseBits(u_input.a), u_input.a << (4294967295u % 32u)) & -min(vec4<i32>(u_input.a, u_input.d, u_input.d, u_input.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(-20556i, u_input.d, -1i, u_input.a), vec4<i32>(u_input.a, -2147483647i, -1i, 2147483647i))), global0.a.b.yx, Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.b.x, 566f))), _wgslsmith_f_op_vec2_f32(-var_1.b.zy), !(!vec2<bool>(var_2.x, true)))), vec4<f32>(-1589f, global0.a.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global0.a.a.x)))), 776f), vec4<bool>(var_1.c.x, all(vec4<bool>(true, global0.a.c.x, var_2.x, var_1.c.x)), select(all(vec4<bool>(true, var_2.x, false, global0.a.c.x)), select(var_1.c.x, var_1.c.x, var_1.c.x), !global0.a.c.x), select(all(vec2<bool>(var_2.x, var_2.x)), true, true)), global0.c << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.d, var_1.d, var_1.d), select(vec3<u32>(48911u, global0.c, 29660u), vec3<u32>(var_1.d, var_1.d, u_input.c.x), vec3<bool>(false, false, false))) % 32u)));
    return global1[_wgslsmith_index_u32(4294967295u, 19u)];
}

fn func_1() -> Struct_3 {
    var var_0 = u_input.c.wx;
    var_0 = ~u_input.c.zz;
    global0 = global1[_wgslsmith_index_u32(var_0.x, 19u)];
    global0 = func_2();
    let var_1 = -473f;
    return Struct_3(func_2().a, global0.a.c, u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -566f)), 205f)) + global0.a.b.x), _wgslsmith_f_op_f32(ceil(-676f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -105f) * -116f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global0.a.a.x)))), 649f)))));
    let var_1 = ~(vec3<u32>(0u, 4294967295u, 1u) << (~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.c.xzx, u_input.c.yyz), reverseBits(u_input.c.wxz)) % vec3<u32>(32u)));
    var var_2 = global0.a;
    var var_3 = ~reverseBits(vec2<u32>(_wgslsmith_sub_u32(~u_input.c.x, 63736u), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.d, u_input.c.x), u_input.c.wz))));
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, var_2.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-776f, global0.a.a.x)))) * global0.a.a)), vec2<u32>(func_1().a.d, var_4.a.d ^ _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(15474u, global0.a.d, 71425u), vec3<u32>(var_3.x, 77221u, var_1.x), vec3<u32>(0u, 51734u, 1u)), u_input.c.xyx)), reverseBits(vec4<i32>(u_input.b.x, func_3(), u_input.d, ~u_input.d)));
}

