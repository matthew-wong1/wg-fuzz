struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 4> = array<vec4<i32>, 4>(vec4<i32>(i32(-2147483648), -8306i, i32(-2147483648), 11007i), vec4<i32>(-1i, 1993i, 8151i, 0i), vec4<i32>(-1i, 5007i, -13362i, 2147483647i), vec4<i32>(-8316i, -48990i, 16577i, -23128i));

var<private> global1: bool = true;

var<private> global2: array<vec2<i32>, 10>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = arg_2;
    global1 = true;
    let var_1 = var_0;
    var var_2 = ~(~var_1.a >> (u_input.a.x % 32u));
    var var_3 = select(select(vec3<bool>(true, false, !any(vec4<bool>(true, arg_0, true, arg_1))), vec3<bool>(arg_1, !arg_0, any(vec4<bool>(true, true, true, true))), false), vec3<bool>(false, select(arg_1, any(vec2<bool>(true, true)), countOneBits(u_input.c.x) > -u_input.c.x), any(select(!vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, arg_0, arg_0), true))), vec3<bool>(select(!(!arg_0), any(vec2<bool>(arg_1, arg_1)), any(!vec4<bool>(false, arg_1, arg_0, arg_0))), false, all(vec2<bool>(true, true))));
    return 4294967295u;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    global2 = array<vec2<i32>, 10>();
    let var_0 = global2[_wgslsmith_index_u32(arg_1.x, 10u)];
    var var_1 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(arg_0, ~vec4<u32>(43469u, u_input.a.x, 35787u, arg_1.x)), arg_1.x), arg_2.a));
    var_1 = Struct_1(func_3(true, all(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), arg_2, arg_2));
    let var_2 = ~(~44571i & var_0.x);
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global2 = array<vec2<i32>, 10>();
    var var_0 = -(~(~(~vec3<i32>(u_input.b.x, arg_2, arg_2))) & vec3<i32>(firstLeadingBit(1i), 2147483647i, _wgslsmith_mod_i32(u_input.d, 29202i)));
    global1 = false;
    let var_1 = Struct_1(reverseBits(13434u));
    global2 = array<vec2<i32>, 10>();
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>) -> u32 {
    var var_0 = func_2(~countOneBits(select(vec4<u32>(75538u, arg_0.a, 71241u, u_input.a.x), vec4<u32>(29250u, 21401u, 78083u, 1u), vec4<bool>(false, false, false, true))) & (vec4<u32>(arg_0.a & u_input.a.x, 12125u, abs(arg_0.a), firstLeadingBit(arg_0.a)) ^ reverseBits(~vec4<u32>(22651u, arg_0.a, arg_0.a, u_input.a.x))), min(firstTrailingBit(select(vec4<u32>(87703u, 43179u, u_input.a.x, 27684u), vec4<u32>(0u, arg_0.a, 14427u, 1u), true)) << (~vec4<u32>(u_input.a.x, arg_0.a, 21167u, 4294967295u) % vec4<u32>(32u)), ~(vec4<u32>(u_input.a.x, 1u, arg_0.a, 0u) & _wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(arg_0.a, u_input.a.x, 1u, arg_0.a)))), Struct_1(4294967295u));
    global1 = any(!(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
    global2 = array<vec2<i32>, 10>();
    let var_1 = _wgslsmith_f_op_vec2_f32(round(arg_1.yz));
    global2 = array<vec2<i32>, 10>();
    return _wgslsmith_dot_vec4_u32(min(~_wgslsmith_mod_vec4_u32(vec4<u32>(6546u, u_input.a.x, var_0.a, 4294967295u), vec4<u32>(6521u, u_input.a.x, 28332u, u_input.a.x)), ~reverseBits(abs(vec4<u32>(var_0.a, arg_0.a, arg_0.a, 116759u)))), ~(~(vec4<u32>(45172u, u_input.a.x, 9637u, 4294967295u) | vec4<u32>(arg_0.a, 4294967295u, u_input.a.x, 20810u))) & select(vec4<u32>(reverseBits(var_0.a), arg_0.a, 20972u, _wgslsmith_mult_u32(arg_0.a, var_0.a)), vec4<u32>(~0u, reverseBits(u_input.a.x), _wgslsmith_clamp_u32(u_input.a.x, arg_0.a, u_input.a.x), reverseBits(3217u)), vec4<bool>(select(true, false, true), all(vec3<bool>(false, true, true)), true, true)));
}

fn func_1() -> vec3<u32> {
    let var_0 = Struct_1(firstTrailingBit(~u_input.a.x));
    var var_1 = ~(~func_5(func_4(Struct_1(1u), func_2(vec4<u32>(34197u, u_input.a.x, var_0.a, var_0.a), vec4<u32>(9469u, var_0.a, 16227u, u_input.a.x), var_0), abs(u_input.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1223f, -363f, 524f))))));
    let var_2 = ~_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.xz, vec2<i32>(u_input.d, _wgslsmith_mod_i32(-15417i, u_input.d))), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x) & (u_input.c.ww >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))), global2[_wgslsmith_index_u32(~(~u_input.a.x), 10u)]), reverseBits(global2[_wgslsmith_index_u32(1u, 10u)]) & -u_input.b.zx);
    let var_3 = select(vec2<bool>(all(vec2<bool>(true, true)) & false, true || select(true, all(vec2<bool>(false, true)), any(vec4<bool>(false, false, false, false)))), select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, true, false)), any(vec2<bool>(true, true))), vec2<bool>(true, !select(false, true, false))), false);
    var var_4 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1421f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -333f))), _wgslsmith_f_op_f32(round(-2190f))))));
    return vec3<u32>(u_input.a.x >> (_wgslsmith_dot_vec2_u32(firstTrailingBit(reverseBits(u_input.a)), ~u_input.a) % 32u), u_input.a.x, 30800u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(any(vec4<bool>(true, true, select(true, false, true), true)) & !(u_input.b.x <= max(u_input.b.x, 6333i)));
    let var_1 = _wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.a.x, ~u_input.a.x, 26179u)) << (reverseBits(func_1() & (vec3<u32>(u_input.a.x, 0u, u_input.a.x) << (vec3<u32>(u_input.a.x, u_input.a.x, 1u) % vec3<u32>(32u)))) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(~(vec3<u32>(77416u, 0u, 47989u) >> (vec3<u32>(12988u, u_input.a.x, 14188u) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_add_u32(0u, u_input.a.x), ~u_input.a.x, ~1u)) & vec3<u32>(~func_4(Struct_1(9179u), Struct_1(u_input.a.x), u_input.c.x).a, u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 0u) << (func_5(Struct_1(u_input.a.x), vec3<f32>(-440f, 560f, -190f)) % 32u)));
    let var_2 = func_2(vec4<u32>(u_input.a.x, 0u, 1u, ~var_1.x) << (min(~(~vec4<u32>(1u, 0u, 0u, var_1.x)), vec4<u32>(70098u, 0u, 7955u, 9349u) ^ vec4<u32>(u_input.a.x, 14530u, u_input.a.x, var_1.x)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(max(~abs(vec4<u32>(u_input.a.x, u_input.a.x, var_1.x, var_1.x)), ~(~vec4<u32>(52303u, u_input.a.x, 4294967295u, 4294967295u))), _wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.a.x, 26315u, 1059u, u_input.a.x), vec4<u32>(u_input.a.x, var_1.x, var_1.x, u_input.a.x), vec4<bool>(var_0, false, var_0, var_0)), ~vec4<u32>(1u, 1u, 45092u, u_input.a.x)) | _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, 0u, 66858u, 0u) << (vec4<u32>(u_input.a.x, var_1.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), vec4<u32>(var_1.x, 51467u, 15517u, 102659u))), Struct_1(1u));
    global2 = array<vec2<i32>, 10>();
    global1 = false;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1006f, _wgslsmith_f_op_f32(f32(-1f) * -392f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(453f)) * _wgslsmith_f_op_f32(min(1641f, 1236f)))) - -129f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -802f)), -1545f)));
    global0 = array<vec4<i32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-439f, var_3.x, -231f, var_3.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, -1346f, -900f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, 1264f, _wgslsmith_f_op_f32(f32(-1f) * -724f), _wgslsmith_f_op_f32(717f + var_3.x)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-1100f, var_3.x, -219f, var_3.x), vec4<f32>(829f, -990f, var_3.x, var_3.x))))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, var_3.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, var_3.x) - var_3.yy)))), _wgslsmith_f_op_f32(-var_3.x), var_1.x << (func_4(Struct_1(4294967295u), var_2, u_input.b.x << (12048u % 32u)).a % 32u), global0[_wgslsmith_index_u32(var_2.a, 4u)]);
}

