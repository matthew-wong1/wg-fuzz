struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(49603i, -13595i, -1i, i32(-2147483648));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> vec4<i32> {
    global0 = vec4<i32>(_wgslsmith_mod_i32(arg_0.x, u_input.a.x), _wgslsmith_add_i32(-33935i, _wgslsmith_add_i32(-2443i, select(0i, 0i, false)) ^ _wgslsmith_dot_vec4_i32(-arg_1.e, firstTrailingBit(vec4<i32>(68720i, 1i, arg_0.x, 2147483647i)))), 1i, -arg_0.x);
    var var_0 = arg_1;
    return arg_1.e;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> i32 {
    global0 = arg_0.a;
    var var_0 = arg_0;
    global0 = var_0.e;
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2509f, -1000f)), ~vec2<i32>((0i << (var_0.d.x % 32u)) | var_0.b, ~max(arg_0.a.x, -56553i)), _wgslsmith_f_op_f32(-1000f + -2181f), arg_0);
    let var_2 = vec3<u32>(var_1.d.d.x, ~_wgslsmith_dot_vec2_u32(~abs(arg_0.d), vec2<u32>(~1u, ~52351u)), _wgslsmith_add_u32(arg_0.d.x, ~4294967295u) << (var_1.d.d.x % 32u));
    return -min(29222i & ~u_input.a.x, -19192i);
}

fn func_2(arg_0: bool, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(vec4<i32>(-1i, 0i | (u_input.b.x & u_input.a.x), u_input.a.x, abs(~global0.x)), -func_4(Struct_1(func_3(vec4<i32>(global0.x, 39041i, global0.x, global0.x), Struct_1(vec4<i32>(-23486i, 0i, u_input.b.x, -1i), 2147483647i, vec2<f32>(-1686f, 1347f), vec2<u32>(1u, 26210u), vec4<i32>(global0.x, -2147483647i, 17498i, u_input.b.x))), global0.x ^ u_input.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(600f, 357f)), _wgslsmith_clamp_vec2_u32(arg_1, arg_1, vec2<u32>(1u, 33952u)), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, u_input.a.x, 1i, -58134i), vec4<i32>(2147483647i, -20629i, global0.x, u_input.c))), vec3<i32>(u_input.c, firstLeadingBit(2147483647i), select(30588i, global0.x, arg_0))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-426f, _wgslsmith_div_f32(-1371f, 727f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-465f, 1909f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), select(vec2<u32>(~(~arg_1.x), _wgslsmith_sub_u32(arg_1.x, _wgslsmith_sub_u32(0u, arg_1.x))), ~vec2<u32>(12768u, _wgslsmith_mod_u32(4294967295u, 4294967295u)), false), -_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.b.x, -2147483647i, global0.x) ^ vec4<i32>(u_input.b.x, u_input.b.x, -35960i, global0.x), -(~vec4<i32>(global0.x, 2147483647i, 2147483647i, -1i))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-617f, 1392f) * -532f), 136f) * vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-270f, var_0.c.x))), _wgslsmith_f_op_f32(round(var_0.c.x)))), vec2<i32>(28132i, 27512i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.c.x)), var_0.c.x), var_0);
    var var_2 = ~vec3<u32>(_wgslsmith_mod_u32(~4294967295u, firstLeadingBit(arg_1.x)), ~_wgslsmith_mult_u32(10239u, 2192u), ~82000u) >> (vec3<u32>(var_1.d.d.x, var_1.d.d.x, firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.d.d.x, arg_1.x, arg_1.x), reverseBits(vec4<u32>(arg_1.x, var_0.d.x, 104968u, var_1.d.d.x))))) % vec3<u32>(32u));
    let var_3 = var_0;
    global0 = vec4<i32>(-1i) * -max(-(var_0.e & vec4<i32>(-1i, -21164i, var_1.b.x, 5601i)), var_0.a);
    return var_1.d;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.c.x, arg_2.c.x, true))))))), arg_1.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - arg_2.c.x);
    var var_2 = vec4<u32>(~(~(~arg_2.d.x)), 32880u, max(_wgslsmith_sub_u32(arg_0.d.x, arg_2.d.x), 0u) ^ ~(~arg_2.d.x), arg_2.d.x) >> (~(~vec4<u32>(53867u, arg_2.d.x >> (1u % 32u), countOneBits(1u), ~arg_0.d.x)) % vec4<u32>(32u));
    var var_3 = vec3<bool>(any(vec4<bool>(true, true, true, true)), !all(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false)))), any(vec2<bool>(var_0 >= func_2(true, vec2<u32>(var_2.x, arg_0.d.x)).c.x, true)));
    var var_4 = Struct_1(reverseBits(select(abs(arg_2.e), func_3(-vec4<i32>(40666i, -1i, 37018i, arg_2.b), arg_0), vec4<bool>(select(var_3.x, var_3.x, true), var_3.x, any(vec4<bool>(var_3.x, var_3.x, var_3.x, true)), true))), 2457i, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_1.yx), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.x + -680f) + _wgslsmith_f_op_f32(arg_2.c.x + arg_2.c.x)), -441f))), ~(arg_0.d & _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(var_2.ww, var_2.xy), select(var_2.xy, vec2<u32>(22780u, 0u), var_3.x))), arg_2.a);
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(~arg_0.d.x, 4294967295u, 37476u, ~(~var_4.d.x)), min(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.d.x, var_4.d.x, 1u, 48323u), vec4<u32>(var_2.x, arg_0.d.x, 91208u, arg_0.d.x)), ~vec4<u32>(25061u, var_2.x, 20009u, arg_2.d.x)) << (reverseBits(abs(vec4<u32>(arg_2.d.x, 0u, arg_2.d.x, 9365u))) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_u32(~vec4<u32>(66546u, 0u, arg_2.d.x, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 63215u, 4294967295u, var_4.d.x), vec4<u32>(40678u, var_4.d.x, 6311u, arg_0.d.x), vec4<u32>(arg_0.d.x, 36059u, 4294967295u, arg_0.d.x)))), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(14736u, 1u, var_4.d.x, 0u)), select(~vec4<u32>(53232u, 1u, 0u, var_4.d.x), firstTrailingBit(vec4<u32>(7668u, arg_2.d.x, arg_0.d.x, var_4.d.x)), all(vec4<bool>(true, true, false, false)))), vec4<u32>(4294967295u, 7519u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_2.wwy, var_2.www), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 28737u), arg_0.d)), 0u)));
}

fn func_6(arg_0: vec4<u32>, arg_1: f32) -> vec4<i32> {
    let var_0 = !(_wgslsmith_add_u32(_wgslsmith_mult_u32(reverseBits(0u), firstLeadingBit(arg_0.x)), arg_0.x) <= 120925u);
    var var_1 = select(vec3<i32>(reverseBits(-2147483647i), firstTrailingBit(global0.x), -_wgslsmith_mult_i32(global0.x | -4706i, 50629i)), func_3(abs(max(vec4<i32>(global0.x, u_input.a.x, global0.x, 0i), vec4<i32>(u_input.b.x, global0.x, -1i, -23468i) >> (vec4<u32>(4294967295u, arg_0.x, 4294967295u, arg_0.x) % vec4<u32>(32u)))), func_2(all(!vec2<bool>(var_0, true)), ~_wgslsmith_clamp_vec2_u32(arg_0.xx, arg_0.ww, vec2<u32>(arg_0.x, arg_0.x)))).xxw, !select(vec3<bool>(true, any(vec2<bool>(var_0, var_0)), var_0 | var_0), select(!vec3<bool>(var_0, var_0, var_0), select(vec3<bool>(true, true, var_0), vec3<bool>(var_0, var_0, false), true), false), !(!vec3<bool>(var_0, true, var_0))));
    global0 = ~firstLeadingBit(-select(vec4<i32>(u_input.a.x, global0.x, -1i, -1i), vec4<i32>(var_1.x, -8671i, u_input.b.x, u_input.b.x), vec4<bool>(var_0, var_0, var_0, false))) | (vec4<i32>(func_2(var_0, arg_0.yz).b, global0.x, 9465i, firstTrailingBit(-22659i | u_input.b.x)) >> (firstLeadingBit(select(arg_0, arg_0, !var_0)) % vec4<u32>(32u)));
    global0 = abs(func_2(var_0, ~(~arg_0.xw)).e);
    let var_2 = select(~(~(vec4<i32>(0i, -1i, -1i, global0.x) ^ vec4<i32>(-2147483647i, 726i, -1i, var_1.x))) & func_2(_wgslsmith_div_f32(796f, 1120f) == _wgslsmith_f_op_f32(-arg_1), firstTrailingBit(arg_0.xx) ^ ~arg_0.wz).e, -countOneBits(vec4<i32>(1i, _wgslsmith_mod_i32(var_1.x, var_1.x), var_1.x, 0i)), select(vec4<bool>(var_0, var_0, all(vec3<bool>(false, var_0, var_0)), var_0), select(select(vec4<bool>(false, false, false, var_0), select(vec4<bool>(var_0, var_0, true, true), vec4<bool>(var_0, true, false, var_0), vec4<bool>(false, false, true, var_0)), vec4<bool>(var_0, false, false, var_0)), select(!vec4<bool>(true, false, var_0, true), !vec4<bool>(true, var_0, var_0, true), vec4<bool>(false, var_0, true, var_0)), false), select(select(!vec4<bool>(var_0, var_0, var_0, true), select(vec4<bool>(false, var_0, false, false), vec4<bool>(false, var_0, false, var_0), false), var_0), vec4<bool>(false, true, arg_0.x > arg_0.x, !var_0), !(!vec4<bool>(false, var_0, var_0, var_0)))));
    return var_2 << (vec4<u32>(28661u, 1u, 38887u, 1u) % vec4<u32>(32u));
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_1 {
    global0 = select(firstLeadingBit(~vec4<i32>(u_input.c, global0.x, 41898i, -1i) & firstLeadingBit(vec4<i32>(0i, 2147483647i, 2147483647i, u_input.c))), vec4<i32>(u_input.c, u_input.a.x, ~(~(~2147483647i)), _wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(u_input.b, vec2<i32>(-9298i, global0.x)), max(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(0i, u_input.b.x)), countOneBits(vec2<i32>(u_input.a.x, 0i))))), !(!vec4<bool>(false, true, false, global0.x <= u_input.a.x)));
    global0 = func_6(func_5(func_2(!(92u == arg_1), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_1, 0u), vec2<u32>(1u, arg_1)), _wgslsmith_sub_vec2_u32(vec2<u32>(24436u, arg_1), vec2<u32>(arg_1, arg_1)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1440f, 1195f, arg_0)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, arg_0, -1566f), vec3<f32>(1658f, arg_0, 1514f))))), Struct_1(firstTrailingBit(vec4<i32>(global0.x, -8271i, -1933i, u_input.a.x)), ~_wgslsmith_add_i32(0i, u_input.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + vec2<f32>(arg_0, arg_0))), min(vec2<u32>(arg_1, 87325u) ^ vec2<u32>(arg_1, 1u), vec2<u32>(4294967295u, arg_1)), _wgslsmith_sub_vec4_i32(~vec4<i32>(2147483647i, 2147483647i, global0.x, u_input.b.x), vec4<i32>(global0.x, -2147483647i, 37747i, 1i)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1453f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, arg_0))))));
    var var_0 = any(vec3<bool>(any(vec4<bool>(true, all(vec2<bool>(true, false)), false, select(false, true, true))), global0.x == ~1i, !(arg_0 < arg_0)));
    var var_1 = -global0.x;
    let var_2 = _wgslsmith_add_u32(arg_1, ~arg_1);
    return Struct_1(vec4<i32>(~(0i), ~(~(~u_input.a.x)), max(global0.x, -_wgslsmith_div_i32(1i, -2026i)), _wgslsmith_dot_vec3_i32(~(-vec3<i32>(global0.x, u_input.b.x, -1i)), _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(1i, global0.x, -49692i)), -vec3<i32>(u_input.b.x, u_input.c, u_input.b.x)))), ~abs(countOneBits(0i)) & ~(~func_6(vec4<u32>(2513u, 1u, 50272u, arg_1), -416f).x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, arg_0), vec2<f32>(131f, arg_0), true)))) - func_2(any(vec2<bool>(true, true)), vec2<u32>(31553u ^ arg_1, arg_1)).c), _wgslsmith_div_vec2_u32(~max(vec2<u32>(var_2, var_2), _wgslsmith_mod_vec2_u32(vec2<u32>(var_2, 36467u), vec2<u32>(var_2, 74646u))), ~(abs(vec2<u32>(var_2, 34592u)) & vec2<u32>(var_2, 4294967295u))), ~_wgslsmith_add_vec4_i32(~(~vec4<i32>(u_input.c, 34473i, global0.x, u_input.a.x)), select(vec4<i32>(2147483647i, 0i, u_input.c, u_input.b.x) | vec4<i32>(1i, -2147483647i, 2147483647i, 30931i), -vec4<i32>(-210i, global0.x, global0.x, -9314i), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4679u;
    var var_1 = func_1(299f, 45369u);
    var var_2 = var_1.d;
    var_2 = vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 20144u), vec3<u32>(18646u, 9672u, 4294967295u)), var_1.d.x), ~4294967295u << ((var_0 << (0u % 32u)) % 32u), firstTrailingBit(~var_1.d.x)), 27336u) & vec2<u32>(~(var_0 << (firstLeadingBit(4294967295u) % 32u)), 3443u >> (~_wgslsmith_sub_u32(var_1.d.x, var_0) % 32u));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(func_2(!(var_1.d.x > var_2.x), var_1.d).c)), ~(-firstLeadingBit(vec2<i32>(80231i, var_1.a.x))), -292f, func_2(any(vec2<bool>(all(vec2<bool>(false, false)), true)), _wgslsmith_add_vec2_u32(min(~var_1.d, ~vec2<u32>(var_0, 3760u)), _wgslsmith_add_vec2_u32(var_1.d, func_1(var_1.c.x, var_2.x).d))));
    let var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(753f, 253f)), vec2<i32>(59032i, -1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1163f)) + _wgslsmith_f_op_f32(-457f - 116f)), Struct_1(reverseBits(var_1.e), i32(-1i) * -_wgslsmith_sub_i32(var_1.a.x, global0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.a * var_3.d.c)), abs(abs(func_2(false, var_3.d.d).d)), var_1.e));
    var var_5 = var_4;
    var var_6 = func_1(207f, max(_wgslsmith_add_u32(var_0, select(52779u, ~0u, select(false, true, false))), var_3.d.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(min(1i, -func_2(true, vec2<u32>(var_1.d.x, 1u) & vec2<u32>(138264u, var_2.x)).a.x), u_input.b.x);
}

