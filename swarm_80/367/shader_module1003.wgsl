struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: u32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec4<i32>;

var<private> global2: vec2<f32> = vec2<f32>(101f, -2515f);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: i32) -> vec2<f32> {
    var var_0 = _wgslsmith_div_vec3_i32(~_wgslsmith_mult_vec3_i32(-countOneBits(vec3<i32>(global0.b.a, 6514i, u_input.a.x)), global1.xww), abs(vec3<i32>(-25731i, arg_0, global1.x)) | abs(global1.wyy));
    let var_1 = false;
    let var_2 = Struct_1(~firstTrailingBit(arg_1.d));
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(ceil(global0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), arg_1.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -964f))))), global0.b, ~(~(~_wgslsmith_sub_u32(global0.c, 4294967295u))), vec2<u32>(~min(countOneBits(1u), arg_1.c), _wgslsmith_dot_vec2_u32(var_2.a, arg_1.b.b.a)));
    let var_3 = ((false || all(select(vec3<bool>(global0.b.c, var_1, true), vec3<bool>(false, arg_1.b.c, global0.b.c), vec3<bool>(true, true, false)))) != !(!select(true, arg_1.b.c, true))) || (arg_1.b.a != ((var_0.x >> (48549u % 32u)) & -14301i));
    return vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -324f)))), _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(select(-377f, 1000f, arg_1.b.c))));
}

fn func_2(arg_0: i32) -> Struct_4 {
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(global2.x, -129f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, global0.a.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(global0.a.yx, global0.a.xx)), _wgslsmith_f_op_vec2_f32(func_3(2147483647i, Struct_3(vec4<f32>(global0.a.x, -813f, global2.x, global2.x), Struct_2(-21016i, global0.b.b, global0.b.c), 67516u, vec2<u32>(global0.c, global0.c)), -69495i)), !global0.b.c)), select(select(vec2<bool>(global0.b.c, true), vec2<bool>(global0.b.c, false), global0.b.c), vec2<bool>(true, global0.b.c), global0.b.c))))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1655f, 720f)))), global0.a.wz))));
    let var_0 = global0.b.b;
    global1 = ~(-vec4<i32>(arg_0, arg_0, -4511i, firstLeadingBit(-arg_0)));
    var var_1 = Struct_1(~var_0.a);
    let var_2 = !vec2<bool>(all(select(vec3<bool>(false, false, false), !vec3<bool>(true, global0.b.c, false), true)), !global0.b.c);
    return Struct_4(global0.b.b, vec2<bool>(all(select(vec4<bool>(false, var_2.x, false, false), vec4<bool>(false, global0.b.c, false, var_2.x), var_2.x)) || true, any(select(vec4<bool>(global0.b.c, true, false, var_2.x), vec4<bool>(global0.b.c, var_2.x, false, var_2.x), vec4<bool>(false, var_2.x, true, false))) || !var_2.x), global0.b.b);
}

fn func_4(arg_0: Struct_4) -> Struct_3 {
    var var_0 = ~arg_0.c.a;
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(select(global0.a, global0.a, arg_0.b.x)), Struct_2(-2147483647i, Struct_1(vec2<u32>(~700u, ~9535u)), func_2(u_input.a.x).b.x), arg_0.c.a.x, vec2<u32>(var_0.x | countOneBits(1u), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.b.b.a.x, 0u), max(vec3<u32>(global0.d.x, 1u, var_0.x), vec3<u32>(global0.c, arg_0.c.a.x, 125675u))))));
    let var_1 = arg_0;
    let var_2 = arg_0;
    var var_3 = global0.b.c;
    return Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(global0.a, global0.a)))))), select(vec4<bool>(global0.b.a > 3078i, true != var_2.b.x, global0.b.c, true), !vec4<bool>(false, var_2.b.x, arg_0.b.x, false), !select(vec4<bool>(false, var_2.b.x, true, true), vec4<bool>(false, var_1.b.x, true, var_2.b.x), vec4<bool>(true, true, false, true))))), Struct_2(firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_div_i32(-2147483647i, -10824i), select(-2147483647i, -43626i, global0.b.c))), arg_0.a, !global0.b.c), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.a.a.x, 4294967295u, var_1.a.a.x, var_2.c.a.x), vec4<u32>(_wgslsmith_mult_u32(var_0.x, global0.d.x), 4294967295u, firstLeadingBit(global0.c), 10476u)), global0.b.b.a);
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_mult_vec3_i32(global1.yyw, _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -u_input.a, ~u_input.a));
    var var_1 = func_4(func_2(~_wgslsmith_add_i32(arg_2.x, select(var_0.x, -2147483647i, true))));
    let var_2 = global0.b.a;
    var var_3 = all(select(select(!(!vec4<bool>(var_1.b.c, arg_0.x, false, global0.b.c)), !vec4<bool>(global0.b.c, global0.b.c, arg_0.x, false), vec4<bool>(-20366i == var_0.x, true, arg_0.x && false, any(arg_0))), vec4<bool>(arg_0.x, false, !func_4(Struct_4(global0.b.b, vec2<bool>(var_1.b.c, false), var_1.b.b)).b.c, select(false, select(var_1.b.c, global0.b.c, true), any(vec3<bool>(global0.b.c, false, arg_0.x)))), !(!select(vec4<bool>(false, arg_0.x, false, true), vec4<bool>(false, var_1.b.c, true, true), true))));
    let var_4 = ~global1.yxw;
    return Struct_2(countOneBits(_wgslsmith_clamp_i32(-_wgslsmith_mult_i32(15579i, arg_2.x), _wgslsmith_clamp_i32(-var_0.x, 0i, 16188i), -25832i)), global0.b.b, all(vec2<bool>(false, !(-9865i <= var_4.x))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_2) -> Struct_3 {
    var var_0 = vec4<u32>(arg_2.b.a.x, _wgslsmith_mult_u32(arg_0.b.a.x, 1u), ~_wgslsmith_clamp_u32(~arg_1.c.a.x >> (~510u % 32u), 4294967295u, 4294967295u), ~global0.b.b.a.x);
    var_0 = select(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, ~var_0.x, reverseBits(65034u), _wgslsmith_add_u32(var_0.x, 4294967295u)), ~(~vec4<u32>(global0.c, 695u, 0u, 29919u))), _wgslsmith_mod_vec4_u32(~(vec4<u32>(82443u, 0u, 42147u, 67813u) & vec4<u32>(37104u, 0u, arg_1.c.a.x, var_0.x)), _wgslsmith_add_vec4_u32(select(vec4<u32>(1u, arg_1.c.a.x, 31477u, arg_0.b.a.x), vec4<u32>(8855u, 4294967295u, arg_1.c.a.x, 1u), vec4<bool>(false, global0.b.c, global0.b.c, true)), countOneBits(vec4<u32>(var_0.x, 53499u, 37182u, 1u)))) | _wgslsmith_mod_vec4_u32(~(vec4<u32>(arg_0.b.a.x, arg_1.c.a.x, 1u, 77830u) & vec4<u32>(arg_0.b.a.x, var_0.x, var_0.x, arg_0.b.a.x)), (vec4<u32>(0u, arg_0.b.a.x, 31388u, 4294967295u) >> (vec4<u32>(83300u, 4294967295u, global0.d.x, global0.b.b.a.x) % vec4<u32>(32u))) >> (reverseBits(vec4<u32>(1u, var_0.x, arg_1.a.a.x, 0u)) % vec4<u32>(32u))), !select(select(!vec4<bool>(global0.b.c, false, false, arg_0.c), select(vec4<bool>(global0.b.c, false, global0.b.c, true), vec4<bool>(false, false, global0.b.c, arg_0.c), arg_2.c), vec4<bool>(arg_1.b.x, true, false, arg_1.b.x)), select(vec4<bool>(global0.b.c, arg_2.c, false, true), select(vec4<bool>(arg_0.c, arg_2.c, true, false), vec4<bool>(arg_2.c, false, false, arg_0.c), arg_0.c), true), vec4<bool>(true, global0.b.c, false, global0.b.c)));
    global2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global0.a.zw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global0.a.xy, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-229f, global0.a.x)))))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(arg_1).a.yy + vec2<f32>(-544f, _wgslsmith_f_op_f32(step(-995f, -211f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global0.a.yw + vec2<f32>(-1000f, 398f))))))));
    var var_1 = vec2<bool>(global0.b.c, false && func_1(vec2<bool>(arg_2.c, true), global0.c, vec2<i32>(u_input.a.x & global1.x, -36257i)).c);
    var var_2 = Struct_4(arg_0.b, vec2<bool>(true, false), Struct_1(~vec2<u32>(select(16395u, 64194u, arg_2.c), countOneBits(1u))));
    return Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.a.x, -1148f)), Struct_2(countOneBits(arg_2.a >> (~4294967295u % 32u)), arg_1.c, any(!arg_1.b)), ~global0.d.x, abs(global0.d));
}

fn func_6(arg_0: Struct_3, arg_1: bool) -> Struct_2 {
    global1 = vec4<i32>(-u_input.a.x, -abs(-28219i) | global0.b.a, func_5(arg_0.b, Struct_4(func_2(-9348i).c, vec2<bool>(true, arg_0.b.c), Struct_1(global0.d)), func_1(select(!vec2<bool>(arg_1, arg_0.b.c), vec2<bool>(global0.b.c, global0.b.c), select(vec2<bool>(false, false), vec2<bool>(arg_0.b.c, false), vec2<bool>(arg_0.b.c, false))), ~_wgslsmith_mult_u32(global0.b.b.a.x, arg_0.d.x), ~reverseBits(u_input.a.yz))).b.a, _wgslsmith_mod_i32(u_input.a.x, i32(-1i) * -2147483647i));
    global1 = _wgslsmith_div_vec4_i32(firstLeadingBit(~(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, arg_0.b.a, global1.x, -59444i), vec4<i32>(u_input.a.x, 23314i, 0i, 3615i)) << ((vec4<u32>(1u, arg_0.d.x, arg_0.c, 0u) << (vec4<u32>(4294967295u, global0.b.b.a.x, arg_0.b.b.a.x, global0.c) % vec4<u32>(32u))) % vec4<u32>(32u)))), vec4<i32>(385i, ~((i32(-1i) * -1i) >> (firstTrailingBit(global0.c) % 32u)), _wgslsmith_mod_i32(-58066i, 6587i), abs(28815i)));
    global1 = vec4<i32>(select(0i, min(_wgslsmith_dot_vec3_i32(abs(u_input.a), ~vec3<i32>(global0.b.a, 2147483647i, global0.b.a)), -39462i), ~(28165u >> (arg_0.c % 32u)) > (func_2(global1.x).c.a.x ^ _wgslsmith_div_u32(global0.d.x, global0.c))), arg_0.b.a, -_wgslsmith_div_i32(1i, arg_0.b.a), select(arg_0.b.a, reverseBits(~abs(0i)), func_5(func_1(func_2(23605i).b, countOneBits(1u), reverseBits(vec2<i32>(global0.b.a, 1i))), func_2(firstLeadingBit(21800i)), arg_0.b).b.c));
    let var_0 = !arg_1;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.a.ywx * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-291f, global0.a.x, 909f) * vec3<f32>(1171f, global0.a.x, arg_0.a.x)), _wgslsmith_f_op_vec3_f32(global0.a.yyx + global0.a.ywx), arg_1)))));
    return arg_0.b;
}

fn func_7(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> i32 {
    global0 = Struct_3(_wgslsmith_div_vec4_f32(global0.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.a, global0.a)), vec4<f32>(_wgslsmith_f_op_f32(min(-536f, global2.x)), _wgslsmith_f_op_f32(global2.x - 2206f), -1552f, _wgslsmith_f_op_f32(-global2.x)))), global0.b, ~(~arg_0), arg_1.b.a);
    let var_0 = abs(_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, global0.d.x), max(vec3<u32>(arg_1.b.a.x, global0.d.x, 44761u), ~vec3<u32>(arg_1.b.a.x, 18138u, arg_1.b.a.x))) | ~_wgslsmith_clamp_vec3_u32(max(vec3<u32>(arg_1.b.a.x, 38682u, arg_1.b.a.x), vec3<u32>(1u, 50832u, 1u)), vec3<u32>(1u, arg_0, arg_1.b.a.x), ~vec3<u32>(arg_1.b.a.x, arg_0, global0.c)));
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(round(global0.a)), arg_1, func_4(Struct_4(func_1(vec2<bool>(arg_1.c, false), arg_1.b.a.x, u_input.a.zy).b, func_2(global1.x).b, Struct_1(vec2<u32>(4294967295u, var_0.x)))).d.x & 5751u, _wgslsmith_mod_vec2_u32(~func_6(func_5(global0.b, Struct_4(Struct_1(vec2<u32>(arg_1.b.a.x, arg_0)), vec2<bool>(true, arg_1.c), arg_1.b), global0.b), true).b.a, ~(~vec2<u32>(global0.d.x, 60018u))));
    global2 = global0.a.zz;
    let var_1 = Struct_4(Struct_1(arg_1.b.a), vec2<bool>(false, !any(!vec2<bool>(arg_1.c, global0.b.c))), arg_1.b);
    return _wgslsmith_sub_i32(-(arg_1.a >> (var_1.a.a.x % 32u)), firstLeadingBit(_wgslsmith_mult_i32(arg_2, ~(-global0.b.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<i32>(1i, func_7(0u, func_6(func_5(func_1(vec2<bool>(false, false), 4294967295u, vec2<i32>(u_input.a.x, 2147483647i)), func_2(global0.b.a), global0.b), true), i32(-1i) * -func_6(Struct_3(global0.a, Struct_2(global1.x, Struct_1(vec2<u32>(4294967295u, global0.d.x)), true), global0.d.x, vec2<u32>(37122u, global0.d.x)), true).a), ~global0.b.a, global1.x);
    var var_0 = max(u_input.a, u_input.a | min(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(global1.x, global0.b.a, u_input.a.x)), ~u_input.a), vec3<i32>(global1.x, u_input.a.x, 1i)));
    var var_1 = Struct_1(global0.b.b.a);
    let var_2 = true;
    var var_3 = func_2(var_0.x).a;
    let var_4 = Struct_4(global0.b.b, vec2<bool>(!(all(vec2<bool>(false, var_2)) || any(vec3<bool>(var_2, true, false))), global0.b.a > _wgslsmith_mod_i32(~global0.b.a, i32(-1i) * -1i)), func_2(~_wgslsmith_mod_i32(u_input.a.x, u_input.a.x) | max(global1.x, -2147483647i)).c);
    var var_5 = var_4.a;
    var_5 = var_4.a;
    let var_6 = Struct_2(5290i, global0.b.b, var_4.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-func_5(Struct_2(-38899i, global0.b.b, global0.b.c), var_4, var_6).a.x), 405f)));
}

