struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, false, true, true), true);

var<private> global1: vec2<u32> = vec2<u32>(14092u, 0u);

var<private> global2: i32 = 2147483647i;

var<private> global3: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec3<bool>(false, true, true), vec4<bool>(true, false, true, true), false), Struct_1(vec3<bool>(false, false, true), vec4<bool>(true, false, false, false), false), Struct_1(vec3<bool>(false, false, false), vec4<bool>(false, true, true, true), false), Struct_1(vec3<bool>(true, false, true), vec4<bool>(false, false, false, false), false), Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, true, true, false), false), Struct_1(vec3<bool>(true, false, true), vec4<bool>(false, true, false, false), false), Struct_1(vec3<bool>(false, false, true), vec4<bool>(true, false, false, true), true), Struct_1(vec3<bool>(true, false, false), vec4<bool>(false, false, true, false), true), Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, true, true, false), true), Struct_1(vec3<bool>(true, false, true), vec4<bool>(false, true, true, true), true), Struct_1(vec3<bool>(true, false, false), vec4<bool>(false, false, true, true), false), Struct_1(vec3<bool>(true, false, false), vec4<bool>(false, true, true, false), false), Struct_1(vec3<bool>(false, false, true), vec4<bool>(true, true, false, false), false), Struct_1(vec3<bool>(false, true, false), vec4<bool>(false, true, false, true), false), Struct_1(vec3<bool>(false, true, false), vec4<bool>(false, true, true, false), false), Struct_1(vec3<bool>(true, false, true), vec4<bool>(false, true, false, false), false));

var<private> global4: array<Struct_1, 10>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    let var_0 = select(vec3<bool>(false || all(select(vec2<bool>(true, global0.a.x), vec2<bool>(true, global0.a.x), global0.a.x)), true | ((global0.b.x || true) & all(global0.b)), false), vec3<bool>(global1.x > _wgslsmith_mult_u32(global1.x, 1u), global0.a.x, !(any(vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.c)) && false)), select(!global0.a, !select(vec3<bool>(global0.c, global0.c, false), !vec3<bool>(global0.a.x, global0.a.x, global0.a.x), !vec3<bool>(global0.a.x, global0.b.x, false)), vec3<bool>(all(!global0.a.zz), !global0.b.x, false)));
    global4 = array<Struct_1, 10>();
    global3 = array<Struct_1, 16>();
    global2 = -1i;
    return vec3<u32>(global1.x, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 39640u) ^ vec2<u32>(global1.x, 35204u), select(vec2<u32>(global1.x, global1.x), vec2<u32>(global1.x, global1.x), false))), global1.x >> (~(~(~global1.x)) % 32u));
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    let var_0 = Struct_1(vec3<bool>(global0.c, true, arg_0.x > arg_0.x), vec4<bool>(global0.c || true, global0.c, any(vec3<bool>(select(true, true, false), true || global0.b.x, true)), _wgslsmith_div_f32(239f, _wgslsmith_f_op_f32(493f + -1181f)) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1747f, -516f, true))))), all(!(!global0.b)));
    let var_1 = ~(~func_3() >> (vec3<u32>(max(~4294967295u, firstTrailingBit(4294967295u)), 46096u, ~global1.x) % vec3<u32>(32u)));
    var var_2 = !vec3<bool>(true, var_0.a.x, var_0.a.x);
    let var_3 = global0.b;
    return 640f;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<bool>) -> i32 {
    global3 = array<Struct_1, 16>();
    var var_0 = ~(abs(_wgslsmith_div_vec4_u32(vec4<u32>(global1.x, 1u, global1.x, 1u), firstLeadingBit(vec4<u32>(global1.x, 72853u, 26509u, global1.x)))) ^ countOneBits(~vec4<u32>(35445u, 0u, 1u, 1u)));
    var var_1 = Struct_1(select(select(vec3<bool>(any(arg_2), !global0.a.x, arg_1.c), arg_1.a, !arg_2.yzz), !select(select(global0.b.zxw, arg_1.a, true), select(vec3<bool>(true, false, arg_1.c), arg_0, arg_0), select(arg_0, arg_0, arg_1.b.x)), vec3<bool>(true, arg_2.x, false)), arg_1.b, false);
    global0 = Struct_1(select(!select(vec3<bool>(global0.c, true, global0.a.x), !arg_0, false), vec3<bool>(arg_0.x, false != any(var_1.b.yz), var_1.a.x), global0.c | true), arg_1.b, all(var_1.b.xyw));
    var_1 = arg_1;
    return ~(-42642i) >> ((~global1.x << (~17545u % 32u)) % 32u);
}

fn func_1() -> vec2<u32> {
    var var_0 = true;
    var var_1 = 7313i;
    var_1 = func_4(select(global0.a, vec3<bool>(_wgslsmith_f_op_f32(-289f + -1000f) >= _wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.b, 2147483647i, u_input.a.x, u_input.b))), global0.c, global0.c), global0.a.x), Struct_1(vec3<bool>(true, all(select(global0.b, vec4<bool>(false, true, true, global0.c), vec4<bool>(true, false, true, false))), any(global0.b.ww)), !select(!vec4<bool>(global0.b.x, true, global0.b.x, false), select(global0.b, vec4<bool>(false, global0.c, global0.c, true), vec4<bool>(false, true, false, global0.b.x)), u_input.b >= u_input.a.x), true), !select(vec4<bool>(true, false, false, true), select(global0.b, select(global0.b, vec4<bool>(global0.b.x, true, global0.c, true), global0.b), vec4<bool>(false, false, false, global0.a.x)), global0.b));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -960f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(854f - 110f))))) - _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -1975f)));
    global1 = max(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(global1.x, global1.x), _wgslsmith_sub_vec2_u32(vec2<u32>(20466u, 91319u), vec2<u32>(global1.x, global1.x)))), vec2<u32>(global1.x, 0u));
    return ~firstLeadingBit(vec2<u32>(53509u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(global1.x, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~func_1();
    var var_0 = countOneBits(select(_wgslsmith_div_u32(_wgslsmith_div_u32(~75172u, ~global1.x), func_3().x), ~0u, 0u <= global1.x));
    var var_1 = Struct_1(!vec3<bool>(any(!vec4<bool>(false, false, global0.c, false)), global0.c & global0.c, global0.a.x), vec4<bool>(true, true, select(!(global1.x > 0u), global0.a.x, true), global0.b.x), _wgslsmith_add_u32(_wgslsmith_mult_u32(reverseBits(4294967295u), _wgslsmith_clamp_u32(global1.x, 79524u, global1.x)), ~(global1.x >> (1u % 32u))) < abs(~global1.x));
    let var_2 = vec3<u32>(global1.x, 102580u, func_1().x);
    global2 = _wgslsmith_sub_i32(abs(firstTrailingBit(_wgslsmith_add_i32(~u_input.b, _wgslsmith_clamp_i32(u_input.a.x, 1i, u_input.b)))), -6143i);
    global0 = Struct_1(vec3<bool>(true, !(_wgslsmith_clamp_u32(global1.x, 74718u, 0u) >= 16337u), var_1.c), !select(var_1.b, select(global0.b, vec4<bool>(false, global0.c, global0.b.x, false), true), any(global0.a)), true);
    var var_3 = Struct_1(!vec3<bool>(reverseBits(u_input.b) < -30125i, var_1.c, global0.a.x), var_1.b, false);
    var var_4 = abs(select(~_wgslsmith_mult_vec3_i32(u_input.a.zzw, -vec3<i32>(0i, u_input.a.x, u_input.b)), ~_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.a.x, u_input.b), vec3<i32>(20124i, -1i, -67371i), u_input.a.xyx), vec3<i32>(-2147483647i, 1i, -1i)), select(var_3.b.wwx, vec3<bool>(false, !var_1.c, true), select(vec3<bool>(global0.c, false, false), vec3<bool>(true, true, global0.a.x), global0.a))));
    let var_5 = Struct_1(select(vec3<bool>(-var_4.x == u_input.b, global0.c, true), var_3.b.wyz, select(select(var_3.a.x, global0.a.x, true), true, false)), vec4<bool>(all(select(var_1.b.yx, select(vec2<bool>(var_1.b.x, var_3.c), global0.b.zx, vec2<bool>(true, var_1.a.x)), true)), false, var_1.a.x, true), var_1.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yxw);
}

