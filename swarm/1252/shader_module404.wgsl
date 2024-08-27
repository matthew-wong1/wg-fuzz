struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: bool,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec2<u32>(0u, 0u), vec2<u32>(0u, 84365u), false, 34196u, vec4<bool>(false, true, false, true)), Struct_1(vec2<u32>(4294967295u, 0u), vec2<u32>(33600u, 14406u), false, 54392u, vec4<bool>(false, true, false, false)), Struct_1(vec2<u32>(0u, 86455u), vec2<u32>(38777u, 1u), false, 4269u, vec4<bool>(false, true, true, true)), Struct_1(vec2<u32>(4294967295u, 1u), vec2<u32>(30741u, 4294967295u), true, 4294967295u, vec4<bool>(true, false, true, true)), Struct_1(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 4294967295u), false, 30895u, vec4<bool>(true, false, true, true)), Struct_1(vec2<u32>(18335u, 0u), vec2<u32>(1u, 1u), false, 15079u, vec4<bool>(true, false, true, false)), Struct_1(vec2<u32>(41780u, 12385u), vec2<u32>(14995u, 50147u), true, 4294967295u, vec4<bool>(false, false, false, false)), Struct_1(vec2<u32>(13034u, 60453u), vec2<u32>(50487u, 0u), false, 0u, vec4<bool>(false, true, false, true)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> u32 {
    var var_0 = Struct_1(~max(vec2<u32>(arg_1.a.x, arg_0.a.x) | vec2<u32>(arg_0.d, 79718u), vec2<u32>(1u, arg_0.d)) >> (~((arg_0.a << (arg_0.a % vec2<u32>(32u))) ^ vec2<u32>(arg_1.d, arg_0.b.x)) % vec2<u32>(32u)), arg_1.a, arg_0.c, ~(countOneBits(arg_1.a.x) << (arg_0.b.x % 32u)), arg_0.e);
    var var_1 = vec3<i32>(arg_2.x, arg_2.x, _wgslsmith_sub_i32(-1i, arg_2.x));
    var var_2 = arg_1;
    var_1 = u_input.c;
    let var_3 = vec3<bool>(true, var_2.c, select(arg_1.c, all(select(vec2<bool>(var_2.e.x, arg_0.e.x), var_0.e.ww, arg_1.e.wz)), abs(u_input.c.x) > arg_2.x) && true);
    return var_0.b.x;
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(abs(countOneBits(arg_0.d)), max(arg_0.a.x, _wgslsmith_add_u32(62704u, 0u))), ~vec2<u32>(u_input.a << (161520u % 32u), arg_0.b.x)), ~vec2<u32>(_wgslsmith_div_u32(~64935u, 49023u), 83u), any(!arg_0.e), ~u_input.a << ((1u >> ((u_input.a << (~arg_0.b.x % 32u)) % 32u)) % 32u), vec4<bool>(all(arg_0.e.xzx), all(select(vec3<bool>(true, false, true), arg_0.e.xxz, !arg_0.e.ywy)), !(!arg_0.e.x), true));
    var var_1 = vec3<bool>(true, arg_0.c, !any(!(!arg_0.e.yyx)));
    let var_2 = Struct_1(vec2<u32>(16403u, 0u), ~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a.x, 23005u) >> ((var_0.a | vec2<u32>(61945u, var_0.a.x)) % vec2<u32>(32u)), abs(var_0.b)), all(var_0.e), u_input.a, !select(select(select(vec4<bool>(true, false, true, arg_0.c), var_0.e, true), var_0.e, !vec4<bool>(true, false, var_1.x, arg_0.e.x)), !select(var_0.e, vec4<bool>(true, var_0.e.x, arg_0.e.x, true), var_1.x), arg_0.c));
    var var_3 = 46322u;
    var_1 = !(!(!select(!var_0.e.wzy, !arg_0.e.ywx, select(vec3<bool>(arg_0.c, var_1.x, var_0.e.x), var_2.e.zww, vec3<bool>(var_0.c, true, true)))));
    return (_wgslsmith_mod_i32(-(~u_input.e), -u_input.c.x) >> (1u % 32u)) != firstLeadingBit(_wgslsmith_sub_i32(-countOneBits(u_input.c.x), _wgslsmith_div_i32(u_input.d.x, 22146i) & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, u_input.e, 2147483647i, u_input.e), vec4<i32>(u_input.b, u_input.c.x, 0i, u_input.b))));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> u32 {
    var var_0 = u_input.a ^ ~firstTrailingBit(firstLeadingBit(func_2(global0[_wgslsmith_index_u32(u_input.a, 8u)], Struct_1(vec2<u32>(u_input.a, 8217u), vec2<u32>(u_input.a, u_input.a), arg_1, 20141u, vec4<bool>(arg_1, false, arg_1, false)), vec4<i32>(-2147483647i, arg_0.x, u_input.c.x, -21268i))));
    var var_1 = !vec4<bool>(arg_1 & true, all(!vec3<bool>(false, arg_1, true)), !all(!vec3<bool>(arg_1, true, arg_1)), all(select(!vec2<bool>(arg_1, true), vec2<bool>(arg_1, false), arg_1 & arg_1)));
    let var_2 = vec4<u32>(~firstTrailingBit(u_input.a), u_input.a, u_input.a >> (1u % 32u), 0u ^ u_input.a);
    let var_3 = Struct_1(~vec2<u32>(~var_2.x, var_2.x), ~vec2<u32>(var_2.x, _wgslsmith_add_u32(71159u, u_input.a) & 1u), true, u_input.a, select(select(vec4<bool>(true, u_input.a != u_input.a, false == var_1.x, true), !select(vec4<bool>(false, arg_1, true, arg_1), vec4<bool>(arg_1, true, var_1.x, true), var_1.x), vec4<bool>(var_1.x, arg_1, false | arg_1, false)), vec4<bool>(any(vec4<bool>(true, true, false, false)), _wgslsmith_div_f32(1569f, 2363f) >= _wgslsmith_f_op_f32(step(-811f, 1349f)), func_3(global0[_wgslsmith_index_u32(var_2.x & var_2.x, 8u)]), all(vec3<bool>(true, true, true))), true));
    global0 = array<Struct_1, 8>();
    return ~min(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.a.x, u_input.a), var_2.zz), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    let var_1 = ~_wgslsmith_mult_u32(~4294967295u, u_input.a) << (max(min(abs(4382u), reverseBits(u_input.a) ^ ~u_input.a), func_1(vec2<i32>(-2147483647i << (u_input.a % 32u), countOneBits(u_input.c.x)), select(true, u_input.b <= u_input.e, false))) % 32u);
    let var_2 = Struct_1(vec2<u32>(select(u_input.a, ~(var_1 >> (19378u % 32u)), true), ~(abs(1u) << ((u_input.a & var_1) % 32u))), vec2<u32>(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), _wgslsmith_div_vec2_u32(vec2<u32>(30918u, u_input.a), vec2<u32>(var_1, 1u)))), _wgslsmith_mult_u32(abs(max(0u, 80698u)), 34486u)), true, ~0u, vec4<bool>(true, !(reverseBits(0i) <= min(u_input.b, u_input.c.x)), !all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)), true));
    let var_3 = Struct_1(abs(select(~(~var_2.b), vec2<u32>(4294967295u >> (var_2.d % 32u), ~var_2.d), var_2.e.yy)), vec2<u32>(0u, 49096u), var_2.c, ~(~1u) ^ _wgslsmith_mult_u32(37089u, var_1), select(vec4<bool>(any(vec2<bool>(true, var_2.c)), true, var_2.c, !func_3(Struct_1(vec2<u32>(u_input.a, 11878u), var_2.a, true, 1u, vec4<bool>(true, false, true, var_2.c)))), var_2.e, all(!select(var_2.e.zxw, vec3<bool>(true, var_2.c, false), var_2.e.zxw))));
    let var_4 = select(var_3.e.zwz, !var_3.e.ywy, !var_2.e.x);
    let var_5 = _wgslsmith_f_op_f32(-359f * _wgslsmith_f_op_f32(abs(-1100f)));
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.d | _wgslsmith_mult_vec2_i32(u_input.c.yz, ~u_input.c.xx), u_input.d), firstLeadingBit(vec2<u32>(1u, ~4294967295u)));
}

