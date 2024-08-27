struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: i32;

var<private> global2: array<f32, 12>;

var<private> global3: Struct_1;

var<private> global4: vec4<bool> = vec4<bool>(false, true, true, false);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = false;
    global1 = -1i;
    global4 = vec4<bool>(false, !(568f > _wgslsmith_f_op_f32(-arg_1.a)), u_input.a.x >= 1608u, true);
    let var_1 = Struct_2(global0.a, select(u_input.b.zz >> (firstLeadingBit(~u_input.c.zx) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0, arg_0), ~vec2<i32>(-11555i, global0.d.x), vec2<i32>(~0i, _wgslsmith_div_i32(1i, 28584i))), select(select(vec2<bool>(false, arg_1.b), select(global4.yx, vec2<bool>(arg_1.b, false), arg_1.b), global0.a), vec2<bool>(global3.c, 1u >= u_input.c.x), arg_1.c)), ~2147483647i, -vec3<i32>(abs(~34349i), global0.d.x, 3388i));
    var var_2 = global4.xyw;
    return vec2<bool>(false, !((min(4294967295u, u_input.c.x) == 1u) != true));
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    global0 = Struct_2(!func_3(1i, Struct_1(1560f, true, true)), ~(~firstTrailingBit(~u_input.b.zz)), firstLeadingBit(_wgslsmith_add_i32(-u_input.d, _wgslsmith_add_i32(select(0i, 1i, global4.x), -2147483647i))), _wgslsmith_mod_vec3_i32(-countOneBits(vec3<i32>(global0.d.x, 10067i, -3771i)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.c, u_input.b.x, 2147483647i, u_input.d), abs(vec4<i32>(global0.d.x, arg_0.x, global0.b.x, global0.d.x))), arg_0.x, ~20045i)));
    var var_0 = abs(~abs(min(vec4<u32>(1u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(37739u, u_input.a.x, 1u, u_input.c.x))) & ~min(~vec4<u32>(65929u, 4294967295u, u_input.c.x, 31214u), ~vec4<u32>(0u, 1u, 38734u, 1u)));
    var_0 = vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~8647u, _wgslsmith_sub_u32(0u, var_0.x)), ~var_0.wz), ~abs(_wgslsmith_sub_u32(var_0.x, var_0.x)), countOneBits(~(~var_0.x)), _wgslsmith_add_u32(~44379u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, var_0.x), u_input.a.yz), u_input.a.x))) | ~(~abs(~vec4<u32>(var_0.x, 8506u, u_input.a.x, 12323u)));
    var var_1 = arg_0.x;
    var var_2 = firstTrailingBit(38080u) >= _wgslsmith_add_u32(var_0.x, 86701u ^ _wgslsmith_div_u32(~var_0.x, 0u));
    return 4294967295u;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: u32) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(175f, global2[_wgslsmith_index_u32(arg_3, 12u)])))) * _wgslsmith_div_f32(977f, _wgslsmith_f_op_f32(380f - global3.a)))), true, false);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1650f), var_0.c, global4.x);
    var var_2 = 1000f;
    var var_3 = !vec4<bool>(var_0.c, false, var_1.c && true, true);
    var var_4 = -firstLeadingBit(arg_2.c);
    return (i32(-1i) * -u_input.b.x) >> (~(u_input.c.x << (arg_1.x % 32u)) % 32u);
}

fn func_1() -> Struct_2 {
    global0 = Struct_2(!vec2<bool>(any(vec2<bool>(global4.x, true)), global4.x), reverseBits(-u_input.b.xw), firstLeadingBit(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], 315f)), ~u_input.c, Struct_2(global0.a, vec2<i32>(-1i, 22857i), u_input.b.x, global0.d), func_2(u_input.b.yzy)) | (i32(-1i) * -78i)), ~global0.d << (~(~(~u_input.a)) % vec3<u32>(32u)));
    var var_0 = _wgslsmith_f_op_f32(floor(-147f));
    global3 = Struct_1(790f, true, global4.x);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(round(1f)), select(global3.b, !((global3.b || false) || true), reverseBits(~u_input.c.x) > u_input.c.x), true);
    global1 = 73701i;
    return Struct_2(select(select(!(!vec2<bool>(false, global0.a.x)), global4.yw, all(vec4<bool>(true, false, global3.c, global3.b)) || false), !global4.zz, vec2<bool>(all(select(vec4<bool>(true, false, var_1.b, var_1.c), vec4<bool>(false, true, false, global4.x), vec4<bool>(true, global4.x, global4.x, false))), all(vec4<bool>(true, var_1.c, global4.x, global0.a.x)))), _wgslsmith_add_vec2_i32(~max(min(vec2<i32>(u_input.b.x, u_input.d), vec2<i32>(-4199i, -1i)), min(global0.b, u_input.b.zw)), global0.d.yz), _wgslsmith_add_i32(reverseBits(firstTrailingBit(global0.c)), 2147483647i), -global0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = func_1();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(23956u, 12u)])) - -1987f), _wgslsmith_f_op_f32(f32(-1f) * -1967f))), (var_0.a.x || true) || !global3.c, false);
    global1 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(global3.a)), ~select(firstTrailingBit(~vec2<i32>(u_input.d, var_0.b.x)), -(vec2<i32>(u_input.b.x, global0.c) & vec2<i32>(var_0.d.x, 1i)), !any(vec2<bool>(false, global4.x))));
}

