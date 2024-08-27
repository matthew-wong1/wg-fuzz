struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    global0 = vec3<bool>(all(select(!(!vec4<bool>(global0.x, global0.x, global0.x, true)), !vec4<bool>(false, global0.x, true, false), vec4<bool>(false, !global0.x, !global0.x, global0.x))), any(vec4<bool>(true, true, !(false && global0.x), true)), global0.x);
    var var_0 = Struct_3(Struct_2(reverseBits(u_input.a), Struct_1(_wgslsmith_add_u32(u_input.a, u_input.a), !(u_input.a != u_input.a), -vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x) ^ -vec3<i32>(0i, u_input.c, 23548i)), countOneBits(vec3<i32>(u_input.c, -28398i, -u_input.b.x))));
    var_0 = Struct_3(var_0.a);
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(247f))), _wgslsmith_f_op_f32(f32(-1f) * -101f)))))));
    let var_2 = _wgslsmith_sub_u32(~47537u, ~firstTrailingBit(_wgslsmith_mult_u32(56013u, var_0.a.a) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(28563u, 0u), vec2<u32>(57768u, var_0.a.b.a)) % 32u)));
    return var_1;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(func_3());
    let var_1 = select(select(!(!select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, true, global0.x), vec3<bool>(global0.x, true, false))), select(vec3<bool>(!global0.x, true, !global0.x), vec3<bool>(all(vec4<bool>(true, global0.x, true, global0.x)), global0.x, false), global0.x), all(select(select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(true, false, global0.x, false), global0.x), select(vec4<bool>(true, true, false, false), vec4<bool>(global0.x, global0.x, false, true), false), select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(false, global0.x, global0.x, false), true)))), select(vec3<bool>(true, global0.x, all(!vec4<bool>(true, false, false, global0.x))), select(select(vec3<bool>(global0.x, false, true), select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, global0.x, global0.x)), false), select(!vec3<bool>(true, true, global0.x), vec3<bool>(false, global0.x, global0.x), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, true, global0.x), vec3<bool>(false, global0.x, false))), true), global0.x), !global0.x);
    var var_2 = ~(~u_input.a);
    global0 = select(!var_1, select(var_1, !var_1, false), true);
    var_2 = 1u;
    return Struct_2(~(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a, 0u), _wgslsmith_div_u32(u_input.a, 4294967295u)) | ~4294967295u), Struct_1(_wgslsmith_mod_u32(6630u, _wgslsmith_mod_u32(u_input.a, ~78084u)), true, vec3<i32>(-1i, 1i, -u_input.c | firstLeadingBit(u_input.c))), ~(~max(-vec3<i32>(u_input.b.x, u_input.c, 1i), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, -33870i, u_input.c), vec3<i32>(u_input.c, 1i, 67079i)))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = -1i;
    var var_1 = arg_0;
    var var_2 = abs(arg_0.c.yz) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u));
    let var_3 = func_2();
    let var_4 = Struct_2(var_3.b.a << (var_1.a % 32u), Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_3.a, 0u), ~vec3<u32>(0u, var_3.b.a, u_input.a)), !(var_1.b == true), _wgslsmith_clamp_vec3_i32(-var_1.c, ~var_1.c, (vec3<i32>(var_0, 0i, var_2.x) << (vec3<u32>(47000u, 1u, 24335u) % vec3<u32>(32u))) | vec3<i32>(arg_0.c.x, var_2.x, arg_0.c.x))), vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.c, var_0), vec3<i32>(5001i, 49404i, -2147483647i)), ~(-(-43027i & var_3.b.c.x)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(i32(-1i) * -21363i, arg_0.c.x), -33053i)));
    return 1336f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -598f) - _wgslsmith_f_op_f32(func_1(Struct_1(1u, true, vec3<i32>(50567i, -11346i, u_input.c))))) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -148f))), !(!global0.x), true);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~vec2<u32>(31360u, countOneBits(1u))), 29162i, u_input.a, _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), -u_input.b.x), u_input.b.x), u_input.b << (~(~vec2<u32>(27932u, 61748u)) % vec2<u32>(32u))));
}

