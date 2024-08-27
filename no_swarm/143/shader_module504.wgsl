struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(1933f, -1000f), 654f, vec3<i32>(-20592i, 18666i, 4247i), i32(-2147483648), vec3<i32>(-13697i, 6596i, 0i));

var<private> global1: Struct_1;

var<private> global2: vec4<u32> = vec4<u32>(5562u, 71011u, 4294967295u, 94042u);

var<private> global3: f32 = 145f;

var<private> global4: vec4<bool> = vec4<bool>(true, false, true, false);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    global3 = _wgslsmith_f_op_f32(-3082f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * global0.b), _wgslsmith_f_op_f32(select(1053f, global1.a.x, true))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1715f - -1000f)))));
    var var_0 = vec4<bool>(true, global4.x, true, any(vec3<bool>(_wgslsmith_f_op_f32(global1.a.x * global1.b) >= _wgslsmith_f_op_f32(f32(-1f) * -1125f), !any(vec4<bool>(global4.x, false, global4.x, true)), any(!vec3<bool>(false, global4.x, true)))));
    var var_1 = ~(~(vec4<u32>(~43158u, _wgslsmith_clamp_u32(1u, 0u, 28222u), ~0u, ~78635u) ^ vec4<u32>(~53935u, ~u_input.e, 1u, 0u | u_input.a)));
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.b - _wgslsmith_div_f32(global0.b, 988f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-622f, global0.a.x, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.x, _wgslsmith_div_f32(global0.a.x, 645f)) - global0.a.x)), firstTrailingBit(vec3<i32>(global1.c.x, _wgslsmith_div_i32(~global0.c.x, 2147483647i), ~max(u_input.c.x, u_input.b))), i32(-1i) * -1i, global1.e);
    var var_2 = 178f;
    return ~global0.d;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<u32>) -> u32 {
    var var_0 = (-u_input.c.zz << ((global2.zx | select(vec2<u32>(46509u, global2.x), select(arg_1.ww, vec2<u32>(39387u, global2.x), global4.zx), all(global4.wzz))) % vec2<u32>(32u))) | -abs(vec2<i32>(~(-13205i), 2147483647i));
    var var_1 = u_input.d.x;
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(max(-212f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(341f))))), _wgslsmith_mod_vec3_i32(vec3<i32>(func_3(), global0.e.x, -2147483647i) << (global2.yxy % vec3<u32>(32u)), -(u_input.c ^ vec3<i32>(7266i, -9078i, 2147483647i))), -(-43816i >> (u_input.d.x % 32u)), abs(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.c.x, 22334i), abs(arg_0.x)), -1i, _wgslsmith_mult_i32(55948i, var_0.x << (0u % 32u)))));
    var var_2 = max(~global2.x, firstLeadingBit(~1u));
    let var_3 = !vec4<bool>(false, !all(select(vec4<bool>(global4.x, global4.x, false, true), vec4<bool>(global4.x, false, false, false), global4.x)), (func_3() ^ -2147483647i) < -_wgslsmith_div_i32(global0.e.x, arg_0.x), true == global4.x);
    return 0u;
}

fn func_1(arg_0: u32, arg_1: bool) -> bool {
    var var_0 = ~abs(countOneBits(global2.xxx));
    var var_1 = true;
    let var_2 = global0.b;
    global2 = ((~(~vec4<u32>(global2.x, global2.x, var_0.x, 1u)) >> (vec4<u32>(31142u, ~0u, arg_0, ~u_input.a) % vec4<u32>(32u))) & vec4<u32>(7784u, firstTrailingBit(~1u), 15851u, 1u)) >> (~vec4<u32>(53768u, u_input.e, 62872u, countOneBits(~0u)) % vec4<u32>(32u));
    global2 = _wgslsmith_div_vec4_u32(vec4<u32>(31201u, 0u, ~(~global2.x) | 0u, ~_wgslsmith_div_u32(~arg_0, 1u)), vec4<u32>((_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.x, u_input.d.x), global2.zyw) ^ var_0.x) ^ 11614u, func_2(global0.e.xy, abs(_wgslsmith_add_vec4_u32(vec4<u32>(1u, global2.x, var_0.x, var_0.x), vec4<u32>(34212u, 4294967295u, u_input.d.x, arg_0)))), var_0.x, _wgslsmith_mod_u32(11025u, max(u_input.a & global2.x, reverseBits(110062u)))));
    return (((u_input.c.x << (_wgslsmith_sub_u32(1u, 0u) % 32u)) << (u_input.e % 32u)) ^ ~countOneBits(-global0.c.x)) < _wgslsmith_div_i32(0i, _wgslsmith_sub_i32(2147483647i, global0.d));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    global4 = vec4<bool>(arg_1, true, false, true);
    var var_0 = Struct_1(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1124f * arg_2.b))) * global0.a.x)), vec3<i32>(abs(arg_2.d) & ~(-global1.e.x), 19682i, max(firstTrailingBit(2147483647i), _wgslsmith_add_i32(global1.d, u_input.c.x))), -countOneBits(~(~8526i)), select(-global0.e, ~vec3<i32>(global0.d, 1i, -2147483647i), (_wgslsmith_mod_i32(u_input.b, 15615i) << (0u % 32u)) == u_input.b));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b, 252f))))) + global0.a.x);
    var var_1 = arg_2;
    let var_2 = _wgslsmith_add_u32(reverseBits(~(~_wgslsmith_dot_vec3_u32(global2.wxy, vec3<u32>(4294967295u, 32457u, 1u)))), global2.x | (firstLeadingBit(select(arg_3.x, 39696u, true)) << (~global2.x % 32u)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(!(true || all(select(vec2<bool>(global4.x, false), vec2<bool>(global4.x, false), vec2<bool>(false, false)))), func_1(~1u, !(_wgslsmith_f_op_f32(abs(-1414f)) < global0.a.x)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.a.x, global0.b), vec2<f32>(2038f, global1.b))) + vec2<f32>(_wgslsmith_f_op_f32(global1.a.x + 1331f), -2062f)), -1478f, max(reverseBits(global1.c), vec3<i32>(select(global0.c.x, -7216i, global4.x), ~8738i, 0i)), global0.c.x, abs(global1.e)), vec4<u32>(firstTrailingBit(26028u), 1u, 0u, _wgslsmith_add_u32(~24480u, _wgslsmith_dot_vec2_u32(global2.zx, vec2<u32>(u_input.e, u_input.d.x)))) & _wgslsmith_div_vec4_u32(~(~vec4<u32>(global2.x, 1u, u_input.e, 0u)), vec4<u32>(55934u >> (global2.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 3809u, 61397u), vec4<u32>(63257u, 0u, 65507u, 90430u)), max(1u, global2.x), firstTrailingBit(u_input.a))));
    let var_1 = countOneBits(u_input.a);
    let var_2 = var_0;
    var var_3 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-var_0.a.x), global0.c, func_3(), ~vec3<i32>(firstLeadingBit(28827i), ~2147483647i, i32(-1i) * -1i) ^ func_4(global4.x, func_4(global4.x, global4.x, Struct_1(vec2<f32>(-175f, -696f), global1.a.x, vec3<i32>(var_2.e.x, 0i, var_0.c.x), -9166i, var_2.c), vec4<u32>(global2.x, 101196u, 56388u, 4294967295u)).b <= _wgslsmith_div_f32(var_2.a.x, var_0.b), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, 151f)), _wgslsmith_f_op_f32(max(var_2.a.x, 214f)), u_input.c, -51989i, _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 28577i, -63282i), global0.e)), vec4<u32>(u_input.a, firstLeadingBit(47469u), _wgslsmith_add_u32(4294967295u, global2.x), u_input.a)).e);
    let x = u_input.a;
    s_output = StorageBuffer(global2.zwz, _wgslsmith_add_vec3_i32(u_input.c, countOneBits(global1.c)), 2461i);
}

