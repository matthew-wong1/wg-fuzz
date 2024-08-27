struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, false);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = countOneBits(u_input.c.x) | min(~2147483647i, -u_input.d);
    var var_1 = 25887i;
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1252f))))), 377f));
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(836f, 1154f, -215f) * vec3<f32>(-392f, 583f, 894f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 321f, 762f), vec3<f32>(181f, 1503f, 2314f), vec3<bool>(false, global0.x, false))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-656f, 1009f, -2059f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1789f, 432f, 693f))))));
    let var_4 = -((~u_input.c | vec4<i32>(i32(-1i) * -763i, u_input.d, ~(-1i), ~(-2147483647i))) >> (u_input.a % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -841f)))));
}

fn func_2() -> Struct_2 {
    global0 = !(!(!select(vec4<bool>(true, true, global0.x, true), select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, true, false, true)), select(true, global0.x, global0.x))));
    let var_0 = 1u;
    let var_1 = Struct_1(_wgslsmith_div_f32(1756f, 226f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(773f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -957f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(728f, _wgslsmith_f_op_f32(func_3()))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(3275f)) + _wgslsmith_f_op_f32(round(318f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-109f + 374f), 1821f))));
    let var_2 = _wgslsmith_mod_vec2_u32(~(~abs(vec2<u32>(28419u, 82048u))), _wgslsmith_mult_vec2_u32(u_input.a.ww, vec2<u32>(~var_0, 1u))) ^ _wgslsmith_mult_vec2_u32(u_input.b.yz, u_input.a.wz);
    var var_3 = reverseBits(vec4<i32>(-2592i, u_input.c.x, reverseBits(u_input.c.x), u_input.c.x));
    return Struct_2(var_1, var_1, Struct_1(var_1.a, var_1.b, _wgslsmith_f_op_vec2_f32(-var_1.c)));
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    return all(vec3<bool>(global0.x, global0.x, global0.x));
}

fn func_1() -> Struct_1 {
    global0 = !vec4<bool>(false, all(vec3<bool>(!global0.x, global0.x, global0.x)), func_4(min(u_input.b.zy & vec2<u32>(u_input.e, 71351u), countOneBits(u_input.a.zw)), _wgslsmith_add_i32(0i, -2147483647i), func_2(), Struct_2(func_2().b, func_2().c, func_2().b)), all(global0.xx));
    global0 = !select(select(!vec4<bool>(true, true, global0.x, true), vec4<bool>(true, -2371i == u_input.d, global0.x, global0.x || global0.x), true), vec4<bool>(true, false, false, !all(global0.ww)), !(!vec4<bool>(false, false, global0.x, global0.x)));
    global0 = select(vec4<bool>(!(!global0.x), select(global0.x, !global0.x, global0.x) || all(global0.yww), !(!(global0.x | global0.x)), any(global0.ww)), !(!vec4<bool>(!global0.x, true, all(global0.www), global0.x)), select(select(!(!vec4<bool>(global0.x, global0.x, global0.x, false)), !(!vec4<bool>(global0.x, global0.x, true, false)), vec4<bool>(u_input.d >= 0i, select(global0.x, false, global0.x), global0.x, !global0.x)), !select(select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, true, global0.x, true), global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, false, true), vec4<bool>(global0.x, true, false, global0.x)), !vec4<bool>(false, global0.x, true, true)), select(!(!vec4<bool>(false, global0.x, true, true)), !select(vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(false, true, false, global0.x)), vec4<bool>(select(true, global0.x, false), u_input.e < u_input.e, !global0.x, global0.x))));
    let var_0 = func_2().c;
    let var_1 = 24719i;
    return func_2().b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.xx;
    let var_1 = Struct_2(func_1(), Struct_1(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(func_1().a * 1069f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(303f, 1380f), vec2<f32>(-1038f, 1044f)))))), func_1());
    global0 = vec4<bool>(false, true, all(select(!global0.zyz, !(!vec3<bool>(global0.x, false, false)), true && global0.x)), true || !(!(!global0.x)));
    let var_2 = var_1.c.a;
    var var_3 = func_2();
    var_3 = var_1;
    var var_4 = abs(abs(_wgslsmith_mult_vec2_i32(u_input.c.ww | _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(-2147483647i, -22623i)), u_input.c.zz)));
    var var_5 = vec4<i32>(-1i) * -reverseBits(countOneBits(u_input.c));
    var_5 = _wgslsmith_mult_vec4_i32(firstLeadingBit(~_wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(var_5.x, 0i, -1i, var_4.x), ~u_input.c)), _wgslsmith_mod_vec4_i32(u_input.c, u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec3<u32>(84913u, select(firstTrailingBit(5112u), _wgslsmith_dot_vec4_u32(vec4<u32>(5469u, u_input.e, 0u, var_0.x), vec4<u32>(0u, var_0.x, var_0.x, var_0.x)), global0.x || global0.x), ~var_0.x) ^ firstLeadingBit(_wgslsmith_mult_vec3_u32(~vec3<u32>(17989u, 1u, u_input.b.x), vec3<u32>(4294967295u, 1717u, u_input.b.x) ^ u_input.a.ywx)), ~(~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(var_0.x, 0u)), _wgslsmith_sub_u32(u_input.a.x, 0u))));
}

