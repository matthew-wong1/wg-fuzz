struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 12>;

var<private> global1: Struct_1 = Struct_1(false, vec3<bool>(false, false, false), vec2<i32>(-55951i, i32(-2147483648)));

var<private> global2: Struct_1 = Struct_1(true, vec3<bool>(false, false, true), vec2<i32>(-59605i, -1i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    return global1.c.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32, arg_3: vec4<f32>) -> Struct_1 {
    global1 = arg_1;
    global0 = array<vec4<f32>, 12>();
    global2 = arg_1;
    let var_0 = arg_1;
    global2 = Struct_1(!(global1.c.x == (~(-28840i) << (firstTrailingBit(18496u) % 32u))), var_0.b, vec2<i32>(-global2.c.x, _wgslsmith_add_i32(abs(_wgslsmith_mult_i32(var_0.c.x, -101925i)), arg_1.c.x)));
    return Struct_1(global1.a, !vec3<bool>(true, !any(vec4<bool>(var_0.b.x, true, true, false)), false), _wgslsmith_add_vec2_i32(vec2<i32>(abs(func_3(arg_0)), -5333i), vec2<i32>(_wgslsmith_add_i32(global1.c.x, firstLeadingBit(arg_1.c.x)), global1.c.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(-global1.c, countOneBits(_wgslsmith_sub_vec2_i32(arg_0.c, u_input.a.xx)), -select(u_input.a.xx, global2.c, arg_2.b.yy)), _wgslsmith_mult_vec2_i32(firstTrailingBit(u_input.a.xx), -u_input.a.xy << (countOneBits(vec2<u32>(33903u, 49922u)) % vec2<u32>(32u)))), Struct_1(true, !global2.b, _wgslsmith_sub_vec2_i32(vec2<i32>(global1.c.x, -71744i), _wgslsmith_add_vec2_i32(arg_0.c, vec2<i32>(arg_2.c.x, 0i))) << (abs(abs(vec2<u32>(0u, 4294967295u))) % vec2<u32>(32u))), 4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(0u, 12u)]) - global0[_wgslsmith_index_u32(0u, 12u)]) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(670f, arg_1.x, arg_1.x, 542f)))))));
    let var_1 = func_2(select(vec2<i32>(global1.c.x, _wgslsmith_clamp_i32(6502i, firstLeadingBit(arg_0.c.x), -1i)), ~arg_2.c, arg_2.a), Struct_1(false, var_0.b, select(vec2<i32>(global1.c.x, ~1i), arg_0.c, all(vec2<bool>(true, arg_2.b.x)) & false)), abs(firstLeadingBit(~0u)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, arg_1.x, -808f, 1000f)))))));
    var var_2 = 4294967295u;
    let var_3 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x))), arg_1.zx));
    var_2 = 36133u;
    return arg_2;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_sub_vec2_i32(firstLeadingBit(u_input.a.xy), abs(global2.c)), arg_1, ~0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global0[_wgslsmith_index_u32(0u, 12u)], _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1199f, -1000f, 1183f, 1185f), global0[_wgslsmith_index_u32(1714u, 12u)], vec4<bool>(true, global1.a, false, true))), arg_1.b.x)) * global0[_wgslsmith_index_u32(1u, 12u)])));
    global1 = var_0;
    global1 = Struct_1(true, vec3<bool>(all(!vec4<bool>(arg_1.a, false, global2.b.x, true)), true, true), _wgslsmith_add_vec2_i32(vec2<i32>(0i, -46158i), reverseBits(min(_wgslsmith_mod_vec2_i32(arg_0.xz, global2.c), func_2(global2.c, arg_1, 1u, global0[_wgslsmith_index_u32(15500u, 12u)]).c))));
    let var_1 = -59243i;
    var var_2 = func_2(vec2<i32>(abs(21210i), global1.c.x) << (~vec2<u32>(47523u, select(4294967295u, 0u, true)) % vec2<u32>(32u)), Struct_1(global1.b.x, arg_1.b, vec2<i32>(_wgslsmith_sub_i32(1i, ~u_input.a.x), ~u_input.a.x)), max(max(~32917u, _wgslsmith_div_u32(8347u, 1u) & _wgslsmith_dot_vec2_u32(vec2<u32>(23979u, 50248u), vec2<u32>(4294967295u, 41665u))), ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(29677u, 1u), 1u, 1u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-535f + -1239f))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(479f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1911f - -352f)))));
    return func_4(arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-205f, -653f)), _wgslsmith_f_op_f32(step(110f, 1000f)))), _wgslsmith_f_op_f32(-823f - -1377f), 1134f)), func_4(Struct_1(arg_1.a, !select(arg_1.b, vec3<bool>(var_0.a, arg_1.b.x, false), var_0.b), vec2<i32>(-1i) * -arg_1.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(1398f * 289f), _wgslsmith_f_op_f32(f32(-1f) * -503f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1790f, -770f, -515f), _wgslsmith_f_op_vec3_f32(vec3<f32>(132f, 944f, -1673f) * vec3<f32>(981f, -531f, -590f))))), func_4(func_4(func_2(vec2<i32>(var_0.c.x, u_input.a.x), var_0, 31059u, vec4<f32>(452f, -809f, -943f, 1686f)), vec3<f32>(-978f, -551f, 893f), func_4(var_0, vec3<f32>(-1094f, -1269f, 2427f), Struct_1(true, arg_1.b, global2.c))), _wgslsmith_div_vec3_f32(vec3<f32>(499f, -2179f, 867f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1879f, 1201f, -180f))), var_0)));
}

fn func_1() -> vec4<f32> {
    var var_0 = global1.b.yy;
    let var_1 = global1.c.x >> (0u % 32u);
    let var_2 = func_5(reverseBits((vec3<i32>(u_input.a.x, 0i, 11796i) | ~vec3<i32>(global2.c.x, global1.c.x, global2.c.x)) << (max(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 1u, 62483u)) % vec3<u32>(32u))), func_4(func_2(global1.c, Struct_1(!global1.b.x, vec3<bool>(true, true, true), ~global2.c), ~0u, global0[_wgslsmith_index_u32(select(36684u, 1u, true), 12u)]), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2336f, -114f, -705f) * vec3<f32>(-685f, 251f, 1808f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-844f, -585f, 1000f))), vec3<f32>(-378f, -408f, _wgslsmith_f_op_f32(min(-105f, -931f))), false)), func_2(vec2<i32>(1i, global1.c.x >> (32469u % 32u)), Struct_1(var_0.x, select(vec3<bool>(var_0.x, global2.a, true), vec3<bool>(var_0.x, false, global2.a), var_0.x), ~global1.c), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), reverseBits(vec3<u32>(4294967295u, 4294967295u, 4294967295u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(4294967295u, 12u)]), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(4294967295u, 12u)])))));
    var var_3 = select(global1.c, vec2<i32>(var_2.c.x, _wgslsmith_dot_vec3_i32(select(u_input.a, _wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(1i, var_2.c.x, var_1)), any(global1.b)), -countOneBits(vec3<i32>(global1.c.x, 2147483647i, var_1)))), any(!vec4<bool>(false, all(vec3<bool>(false, true, var_0.x)), !global1.a, !var_0.x)));
    global2 = func_2(~max(vec2<i32>(countOneBits(var_2.c.x), var_3.x), u_input.a.yy), Struct_1(true, func_4(Struct_1(true, vec3<bool>(false, var_0.x, var_0.x), select(u_input.a.zx, global1.c, global2.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, 287f, 280f), vec3<f32>(105f, 685f, 668f)))), func_2(func_4(Struct_1(false, vec3<bool>(false, global2.b.x, true), vec2<i32>(4176i, 2147483647i)), vec3<f32>(-659f, -313f, 1053f), Struct_1(global1.b.x, global2.b, vec2<i32>(-2147483647i, 0i))).c, var_2, ~18433u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1393f, -623f, 302f, 1000f)))).b, vec2<i32>(~global1.c.x, -var_3.x) & global1.c), _wgslsmith_dot_vec4_u32(vec4<u32>(26897u, _wgslsmith_clamp_u32(1u, 21140u, 1u), 0u, ~64839u) >> (~(~vec4<u32>(73252u, 1u, 367u, 1u)) % vec4<u32>(32u)), vec4<u32>(~(~64742u), 8472u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), ~vec2<u32>(4294967295u, 72131u)), 10804u)), vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(762f, -1000f))), 1f, _wgslsmith_div_f32(_wgslsmith_div_f32(153f, _wgslsmith_f_op_f32(step(526f, -491f))), _wgslsmith_f_op_f32(f32(-1f) * -174f))));
    return global0[_wgslsmith_index_u32(~(~1u) << (_wgslsmith_div_u32(1u, abs(min(10548u, 11260u)) << (_wgslsmith_mod_u32(1u, firstLeadingBit(3122u)) % 32u)) % 32u), 12u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(~countOneBits(firstLeadingBit(global2.c.x)) >= (u_input.a.x | global2.c.x), global2.b, -_wgslsmith_add_vec2_i32(min(vec2<i32>(6781i, -32863i) | vec2<i32>(0i, global1.c.x), vec2<i32>(global1.c.x, 62177i)), ~vec2<i32>(global1.c.x, global1.c.x)));
    var var_0 = _wgslsmith_f_op_vec4_f32(func_1());
    var var_1 = global1.b;
    global2 = Struct_1(true, !(!(!global2.b)), global1.c);
    let var_2 = ~firstLeadingBit(~10378u);
    let var_3 = Struct_1(global2.b.x, func_5(u_input.a, Struct_1(var_1.x, global2.b, _wgslsmith_sub_vec2_i32(global1.c, vec2<i32>(global1.c.x, 0i)) | (vec2<i32>(19489i, global1.c.x) ^ global2.c))).b, vec2<i32>(-8878i ^ -reverseBits(global1.c.x), _wgslsmith_mult_i32(-(~0i), func_2(u_input.a.xy, func_2(vec2<i32>(2147483647i, global1.c.x), Struct_1(false, global2.b, vec2<i32>(2147483647i, 13277i)), 32298u, vec4<f32>(-1462f, var_0.x, var_0.x, var_0.x)), countOneBits(var_2), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)).c.x)));
    let var_4 = vec2<u32>(4294967295u | var_2, _wgslsmith_mod_u32(reverseBits(var_2), _wgslsmith_clamp_u32((var_2 >> (5345u % 32u)) >> (var_2 % 32u), _wgslsmith_sub_u32(~29660u, firstTrailingBit(var_2)), var_2)));
    global2 = var_3;
    global1 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(var_0.wz)), var_0.x);
}

