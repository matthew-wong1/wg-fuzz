struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_div_f32(-775f, -555f), Struct_1(-(vec3<i32>(33969i, u_input.c, u_input.b) << (u_input.a % vec3<u32>(32u))), -136f, vec2<i32>(abs(u_input.c), _wgslsmith_sub_i32(-2147483647i, u_input.b)), vec4<u32>(u_input.a.x & u_input.a.x, arg_0, _wgslsmith_add_u32(46168u, 15824u), u_input.a.x), u_input.b), Struct_1(min(select(vec3<i32>(u_input.c, -36071i, 0i), vec3<i32>(-27586i, u_input.c, u_input.b), vec3<bool>(true, true, true)), _wgslsmith_div_vec3_i32(vec3<i32>(54884i, 55915i, u_input.c), vec3<i32>(u_input.c, 25005i, -1i))), 1f, vec2<i32>(-33504i, u_input.b), vec4<u32>(_wgslsmith_clamp_u32(33862u, u_input.a.x, 66218u), firstLeadingBit(arg_0), ~u_input.a.x, ~arg_0), ~(~(-29691i))), ~vec4<u32>(arg_0, 66157u & u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.a.zx), arg_0 >> (arg_0 % 32u))), _wgslsmith_mult_u32(~u_input.a.x, ~28411u), Struct_1(_wgslsmith_mult_vec3_i32(countOneBits(firstLeadingBit(vec3<i32>(u_input.b, 9991i, u_input.c))), min(-vec3<i32>(u_input.c, 29001i, 2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.c, 2147483647i), vec3<i32>(u_input.b, 0i, -26118i)))), 1353f, -(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, -54398i), vec2<i32>(4389i, u_input.c)) >> (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u))), ~(~vec4<u32>(4294967295u, 1u, 19831u, arg_0)) ^ select(_wgslsmith_div_vec4_u32(vec4<u32>(7638u, arg_0, 4294967295u, 1u), vec4<u32>(23419u, 4294967295u, 26u, 0u)), vec4<u32>(36587u, 1u, arg_0, u_input.a.x), true), -14561i), Struct_1(abs(select(~vec3<i32>(u_input.b, -29892i, 2147483647i), select(vec3<i32>(-15779i, u_input.c, u_input.c), vec3<i32>(u_input.b, -2147483647i, u_input.c), vec3<bool>(true, false, true)), vec3<bool>(false, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-504f, 421f)) - -168f)), _wgslsmith_add_vec2_i32(~(vec2<i32>(1i, 2147483647i) << (vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u))), vec2<i32>(~(-18494i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(u_input.c, -1i)))), vec4<u32>(abs(~25803u), ~arg_0, max(max(u_input.a.x, arg_0), 869u), ~arg_0), 2147483647i));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_0.d.b, var_0.d.b)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.b), -258f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1047f, -452f, false)))))), var_0.c, var_0.d, var_0.c.d);
    let var_2 = Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(var_0.a.b.a, vec3<i32>(var_1.b.a.x, var_1.b.c.x, -35401i) ^ vec3<i32>(var_1.c.a.x, -15589i, u_input.b)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, 49289i, u_input.b), vec3<i32>(81i, u_input.c, 2147483647i), vec3<i32>(-2147483647i, -1i, u_input.c))), _wgslsmith_mod_vec3_i32(countOneBits(var_1.b.a), ~vec3<i32>(var_1.c.c.x, var_1.b.e, var_0.d.c.x))), -198f, vec2<i32>(_wgslsmith_add_i32(0i, abs(countOneBits(var_0.a.c.a.x))), var_1.b.e), firstLeadingBit(~var_0.a.c.d), -18187i);
    let var_3 = false | !((_wgslsmith_f_op_f32(trunc(var_1.c.b)) != _wgslsmith_f_op_f32(var_2.b * var_1.c.b)) != any(vec2<bool>(true, true)));
    let var_4 = arg_0;
    return 1i;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: u32, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = Struct_3(arg_3, 1u, arg_3.b, Struct_1(select(arg_3.c.a, select(_wgslsmith_mod_vec3_i32(arg_3.c.a, arg_3.c.a), -vec3<i32>(arg_1, u_input.c, 0i), any(vec2<bool>(false, true))), vec3<bool>(true, any(vec4<bool>(false, false, true, true)), all(vec2<bool>(true, false)))), 2223f, arg_3.b.c << (arg_3.b.d.yz % vec2<u32>(32u)), arg_3.b.d, func_3(abs(arg_2))));
    let var_1 = var_0;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.b)))), Struct_1(var_1.a.b.a >> (_wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_1.a.c.d.x, 1u) ^ var_1.a.b.d.yyz, ~u_input.a) % vec3<u32>(32u)), arg_3.c.b, var_1.d.a.xy, abs(var_0.c.d), i32(-1i) * -arg_0), var_1.d, vec4<u32>(arg_2, 1u, ~(~var_1.a.c.d.x), _wgslsmith_div_u32(firstLeadingBit(firstLeadingBit(28139u)), abs(firstLeadingBit(u_input.a.x)))));
    var var_3 = vec3<i32>(arg_0, 11965i, arg_1);
    return vec2<u32>(var_2.c.d.x, arg_3.c.d.x);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: f32) -> vec2<bool> {
    let var_0 = select(vec3<u32>(0u, max(4294967295u, arg_1.d.x) | arg_1.d.x, _wgslsmith_dot_vec2_u32(func_2(1i, 0i, 1u, Struct_2(arg_3, arg_1, arg_1, vec4<u32>(arg_0, 34560u, arg_1.d.x, 1u))), vec2<u32>(arg_1.d.x, arg_0))), arg_1.d.wwx, all(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false))) | _wgslsmith_clamp_vec3_u32(reverseBits(arg_1.d.zxw), vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(11581u, 36728u, arg_1.d.x), vec3<u32>(7588u, u_input.a.x, 4294967295u)), arg_0, u_input.a.x), vec3<u32>(min(~arg_1.d.x, arg_1.d.x), arg_1.d.x, ~33680u));
    var var_1 = arg_1;
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(468f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(824f, 568f)), _wgslsmith_f_op_f32(select(arg_3, 1589f, false)), false))), Struct_1(countOneBits(arg_1.a), _wgslsmith_f_op_f32(-arg_1.b), min(arg_1.c, var_1.a.xx) >> (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u)), _wgslsmith_mod_vec4_u32(arg_1.d, arg_1.d), arg_2.x), arg_1, min(arg_1.d, abs(max(vec4<u32>(90479u, 1u, arg_1.d.x, arg_0), vec4<u32>(11585u, u_input.a.x, 4294967295u, 33712u))))), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(51101u, 4294967295u, 4294967295u, 33898u)), _wgslsmith_div_vec4_u32(arg_1.d, ~countOneBits(arg_1.d))), arg_1, Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.a.x, var_1.a.x, 36133i >> (arg_0 % 32u)), vec3<i32>(u_input.b, arg_2.x, 1i) << (abs(vec3<u32>(4294967295u, arg_0, 1u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.b, arg_1.b))), abs(arg_2.xw), arg_1.d | arg_1.d, arg_2.x));
    let var_3 = ~(~vec3<i32>(countOneBits(28664i), firstLeadingBit(arg_2.x), ~arg_2.x));
    let var_4 = var_2.a;
    return select(select(vec2<bool>(!any(vec4<bool>(false, false, false, true)), true), !(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), select(vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))), any(vec4<bool>(true, true, true, true))), vec2<bool>(!select(false, false, false), ~arg_0 == min(var_0.x, 30972u)), vec2<bool>(true, true)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<i32>(_wgslsmith_mult_i32(min(-29870i, u_input.b), 46878i & u_input.b), u_input.c) << (~(~(~abs(u_input.a.zx))) % vec2<u32>(32u));
    let var_1 = any(!func_1(u_input.a.x >> (80364u % 32u), Struct_1(vec3<i32>(0i, u_input.b, 5081i), _wgslsmith_f_op_f32(select(1000f, 613f, true)), firstLeadingBit(vec2<i32>(-30221i, 0i)), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), -1i), -(~vec4<i32>(-13598i, u_input.b, u_input.b, u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(447f, 689f)))));
    var var_2 = Struct_1(max(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c) << (u_input.a % vec3<u32>(32u)), -select(vec3<i32>(var_0.x, u_input.c, 1i), vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_1, var_1, var_1))), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, 41373i, u_input.c) << (u_input.a % vec3<u32>(32u)), -vec3<i32>(var_0.x, u_input.c, 24481i)) | -vec3<i32>(u_input.b, var_0.x, u_input.b)), _wgslsmith_f_op_f32(f32(-1f) * -1199f), vec2<i32>(func_3(4294967295u), _wgslsmith_div_i32(func_3(~61081u), _wgslsmith_sub_i32(var_0.x ^ -2147483647i, u_input.b))), vec4<u32>(min(1u, 60470u), _wgslsmith_add_u32(abs(_wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(1u, 8396u))), u_input.a.x), _wgslsmith_mod_u32(4294967295u << (min(43226u, u_input.a.x) % 32u), ~2149u), firstLeadingBit(0u | ~u_input.a.x)), _wgslsmith_div_i32(~firstTrailingBit(-u_input.b), firstTrailingBit(-2147483647i)));
    let var_3 = Struct_3(Struct_2(-526f, Struct_1(~vec3<i32>(var_2.a.x, var_0.x, 2147483647i), var_2.b, vec2<i32>(38821i, _wgslsmith_clamp_i32(1i, -26564i, -6864i)), reverseBits(var_2.d), var_2.c.x), Struct_1(firstLeadingBit(vec3<i32>(var_0.x, -2147483647i, u_input.b)), _wgslsmith_f_op_f32(min(-198f, _wgslsmith_f_op_f32(-var_2.b))), var_2.c, abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u)), -u_input.b), ~var_2.d), abs(~1u), Struct_1(countOneBits(_wgslsmith_sub_vec3_i32(var_2.a, vec3<i32>(var_2.a.x, -55521i, u_input.b))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.b - _wgslsmith_f_op_f32(var_2.b * var_2.b)), var_2.b)), select(select(vec2<i32>(-2147483647i, u_input.c), vec2<i32>(var_2.e, 34081i), var_1) >> (_wgslsmith_clamp_vec2_u32(u_input.a.zy, var_2.d.xz, var_2.d.zw) % vec2<u32>(32u)), -(var_0 << (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u))), var_1), var_2.d, _wgslsmith_dot_vec3_i32(countOneBits(firstTrailingBit(vec3<i32>(var_2.e, var_0.x, -4505i))), vec3<i32>(var_0.x, -1i, 1i) >> (~u_input.a % vec3<u32>(32u)))), Struct_1(vec3<i32>(countOneBits(-3200i), firstLeadingBit(13539i >> (u_input.a.x % 32u)), -(i32(-1i) * -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1073f, -553f)), vec2<i32>(2686i, var_0.x), _wgslsmith_sub_vec4_u32(vec4<u32>(var_2.d.x, 95641u, 2651u, 29505u) | abs(vec4<u32>(37916u, 0u, var_2.d.x, var_2.d.x)), var_2.d | var_2.d), u_input.c));
    let var_4 = select(!vec4<bool>(false, true, func_1(max(var_3.b, var_3.b), Struct_1(var_2.a, -564f, vec2<i32>(var_0.x, -1i), var_3.c.d, -26418i), -vec4<i32>(38916i, -25050i, 0i, var_2.c.x), var_3.c.b).x, !any(vec2<bool>(var_1, var_1))), vec4<bool>(var_3.a.c.b < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.a.c.b))), false, true, true), !(!vec4<bool>(false, any(vec4<bool>(var_1, false, var_1, true)), true, !var_1)));
    var_2 = Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-26060i, 8346i, 32971i, var_0.x)), select(vec4<i32>(1i, var_2.a.x, 14941i, -31056i), vec4<i32>(-2147483647i, u_input.b, u_input.b, var_0.x), vec4<bool>(true, var_4.x, true, var_1))) ^ -34614i, firstLeadingBit(_wgslsmith_dot_vec3_i32(var_3.a.c.a ^ vec3<i32>(-2147483647i, 7382i, -1i), _wgslsmith_sub_vec3_i32(var_2.a, var_2.a))), var_3.d.e), -798f, var_3.a.c.a.zz, vec4<u32>(countOneBits(~(~var_3.d.d.x)), var_3.d.d.x, 0u, abs(var_2.d.x)), func_3(firstLeadingBit(4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(select(countOneBits(~2147483647i << (~u_input.a.x % 32u)), ~var_3.c.c.x, var_1), (firstTrailingBit(_wgslsmith_div_i32(-2147483647i, var_0.x)) >> (2239u % 32u)) ^ firstTrailingBit(u_input.b), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.c.b)) * _wgslsmith_div_f32(300f, var_2.b)) + 250f), _wgslsmith_f_op_f32(f32(-1f) * -453f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1035f), 1030f, any(vec2<bool>(var_1, var_1)))), _wgslsmith_f_op_f32(select(var_2.b, _wgslsmith_f_op_f32(-var_3.d.b), var_4.x)), select(true, false, false)))), _wgslsmith_f_op_f32(var_2.b + 1336f), var_2.d.x);
}

