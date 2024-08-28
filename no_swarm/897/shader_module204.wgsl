struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28> = array<i32, 28>(2147483647i, -35722i, -1i, -2842i, 26067i, -1i, 0i, -14549i, 36191i, -35059i, -16457i, 1i, 5210i, 0i, -35234i, 60778i, 2147483647i, -19206i, -7130i, 34333i, i32(-2147483648), 30341i, 43064i, -33848i, 2147483647i, i32(-2147483648), 2974i, 0i);

var<private> global1: array<bool, 32> = array<bool, 32>(true, false, true, false, true, true, false, true, false, false, false, true, false, true, false, false, true, true, false, false, false, false, false, true, true, false, false, true, false, false, true, true);

var<private> global2: array<vec2<u32>, 2> = array<vec2<u32>, 2>(vec2<u32>(60485u, 14561u), vec2<u32>(35837u, 16543u));

var<private> global3: array<u32, 14>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = arg_1.a.yw;
    let var_1 = global0[_wgslsmith_index_u32(0u, 28u)];
    global3 = array<u32, 14>();
    var var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1069f, -631f)) + -1894f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b.x, arg_1.b.x))))));
    return min(arg_1.c << (((_wgslsmith_sub_vec4_u32(var_2.c, arg_0.c) | max(arg_0.c, u_input.a)) ^ vec4<u32>(_wgslsmith_sub_u32(arg_1.c.x, 1u), ~arg_0.c.x, 86177u, _wgslsmith_mult_u32(arg_1.c.x, u_input.b))) % vec4<u32>(32u)), u_input.a);
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> vec2<f32> {
    let var_0 = arg_0;
    var var_1 = select(_wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(~arg_0.c, var_0.c ^ vec4<u32>(var_0.c.x, u_input.c, 0u, arg_0.c.x)), (abs(u_input.a) | func_3(Struct_1(var_0.a, var_0.b, vec4<u32>(59711u, u_input.a.x, var_0.c.x, 56113u), arg_0.d), Struct_1(vec4<bool>(false, arg_0.d, false, true), arg_0.b, vec4<u32>(1u, 4294967295u, global3[_wgslsmith_index_u32(0u, 14u)], var_0.c.x), true))) >> (~var_0.c % vec4<u32>(32u))), arg_0.c, select(!var_0.a, vec4<bool>(any(!var_0.a.yy), !arg_0.d, all(!arg_0.a), !arg_0.a.x), vec4<bool>(true, global1[_wgslsmith_index_u32(abs(1u), 32u)], !(global3[_wgslsmith_index_u32(113046u, 14u)] == 1u), any(vec3<bool>(true, arg_0.a.x, false)))));
    global0 = array<i32, 28>();
    global2 = array<vec2<u32>, 2>();
    var var_2 = Struct_1(!var_0.a, _wgslsmith_div_vec2_f32(arg_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(var_0.b, vec2<f32>(arg_0.b.x, arg_1))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2421f, -1655f)), select(vec2<bool>(arg_0.d, global1[_wgslsmith_index_u32(14769u, 32u)]), arg_0.a.zz, vec2<bool>(arg_0.a.x, false)))) - vec2<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1)))), vec4<u32>(var_1.x, _wgslsmith_add_u32(~var_0.c.x, reverseBits(global3[_wgslsmith_index_u32(arg_0.c.x, 14u)])), 1u, 0u) << (~vec4<u32>(max(1u, 4294967295u), _wgslsmith_div_u32(var_0.c.x, 31475u), ~4294967295u, 0u) % vec4<u32>(32u)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_0.c.xyw, arg_0.c.zww), 4294967295u), 32u)]);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b + vec2<f32>(arg_1, var_2.b.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, var_2.b.x)))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    global3 = array<u32, 14>();
    global3 = array<u32, 14>();
    var var_0 = select(global0[_wgslsmith_index_u32(~(~41456u) | arg_2.x, 28u)], _wgslsmith_sub_i32(~global0[_wgslsmith_index_u32(40222u, 28u)], ~2098i), global1[_wgslsmith_index_u32(select(_wgslsmith_div_u32(87382u, ~57907u), arg_2.x, !(_wgslsmith_f_op_f32(f32(-1f) * -1341f) != _wgslsmith_f_op_f32(step(arg_1.b.x, arg_1.b.x)))), 32u)]);
    let var_1 = arg_1;
    let var_2 = Struct_1(var_1.a, arg_1.b, vec4<u32>(global3[_wgslsmith_index_u32(~(countOneBits(arg_2.x) | 29588u), 14u)], ~arg_1.c.x, ~arg_1.c.x, reverseBits(0u)), !(!(!global1[_wgslsmith_index_u32(arg_0, 32u)])) & (select(any(vec3<bool>(false, true, var_1.a.x)), false, select(false, false, false)) | global1[_wgslsmith_index_u32(2516u, 32u)]));
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>) -> vec2<bool> {
    global2 = array<vec2<u32>, 2>();
    var var_0 = arg_0;
    let var_1 = vec4<i32>(-56315i, 0i, arg_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(49999i ^ global0[_wgslsmith_index_u32(u_input.a.x, 28u)], abs(-43905i)), arg_1.yz));
    let var_2 = ~max(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, var_0.c.x), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~global2[_wgslsmith_index_u32(0u, 2u)], vec2<u32>(0u, 17732u)), 2u)]), arg_0.c.ww);
    let var_3 = !vec3<bool>(!(true && all(vec3<bool>(true, false, var_0.a.x))), var_0.d, !(!global1[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(1u, 14u)], 32u)]));
    return !arg_0.a.zz;
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: u32, arg_3: f32) -> Struct_1 {
    global0 = array<i32, 28>();
    var var_0 = -722f;
    var var_1 = !func_5(func_4(~63631u, Struct_1(select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 32u)], true), vec4<bool>(global1[_wgslsmith_index_u32(1u, 32u)], false, global1[_wgslsmith_index_u32(4294967295u, 32u)], true), false), _wgslsmith_f_op_vec2_f32(func_2(Struct_1(vec4<bool>(true, true, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 32u)], false), vec2<f32>(-627f, arg_3), vec4<u32>(u_input.a.x, 1u, global3[_wgslsmith_index_u32(4294967295u, 14u)], 0u), global1[_wgslsmith_index_u32(u_input.c, 32u)]), arg_0)), u_input.a, true), select(u_input.a | vec4<u32>(0u, 12901u, 31010u, global3[_wgslsmith_index_u32(0u, 14u)]), u_input.a, vec4<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 32u)], true))), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-58117i, global0[_wgslsmith_index_u32(30903u, 28u)], 46132i), vec3<i32>(-1i, arg_1.x, 31746i)), vec3<i32>(0i, 13308i, 2147483647i)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, arg_1.x, global0[_wgslsmith_index_u32(u_input.a.x, 28u)]), vec3<i32>(22307i, -2147483647i, -2147483647i)), min(vec3<i32>(28980i, arg_1.x, -2147483647i), vec3<i32>(global0[_wgslsmith_index_u32(40068u, 28u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 14u)], 28u)], -35125i)), vec3<i32>(global0[_wgslsmith_index_u32(721u, 28u)], -1i, arg_1.x))));
    var var_2 = _wgslsmith_mult_i32(_wgslsmith_add_i32(firstTrailingBit(abs(arg_1.x)), arg_1.x >> (~4294967295u % 32u)), arg_1.x) <= ~(~1i);
    var var_3 = reverseBits(global3[_wgslsmith_index_u32(105835u, 14u)]);
    return Struct_1(!(!vec4<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 32u)], true, global1[_wgslsmith_index_u32(0u, 32u)], true)), false && global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 14u)], 32u)], func_4(1u, Struct_1(vec4<bool>(var_1.x, false, false, true), vec2<f32>(368f, arg_0), u_input.a, false), u_input.a).a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 14u)], 14u)] != 4294967295u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2154f, _wgslsmith_f_op_f32(f32(-1f) * -574f))), u_input.a, !global1[_wgslsmith_index_u32(1u, 32u)]);
}

fn func_6(arg_0: f32, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = (reverseBits(_wgslsmith_add_i32(31349i, -2147483647i)) << (~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(59566u, u_input.c, 0u), 0u) % 32u)) << (max(func_4(~_wgslsmith_sub_u32(arg_3.c.x, 0u), Struct_1(!vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 32u)], true, true), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(403f, arg_3.b.x))), vec4<u32>(global3[_wgslsmith_index_u32(13300u, 14u)], 22060u, global3[_wgslsmith_index_u32(1u, 14u)], arg_3.c.x), false), vec4<u32>(~20249u, arg_3.c.x, 1u, 64502u)).c.x, 0u) % 32u);
    var var_1 = u_input.a.zzx;
    var var_2 = arg_3;
    let var_3 = func_1(arg_3.b.x, _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(var_1.x, 28u)], 2147483647i), var_0 << (4294967295u % 32u)) >> ((~arg_3.c.wz << (~u_input.a.ww % vec2<u32>(32u))) % vec2<u32>(32u)), reverseBits(select(reverseBits(vec2<i32>(var_0, global0[_wgslsmith_index_u32(47842u, 28u)])), firstTrailingBit(vec2<i32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_3.c.x, 14u)], 28u)], 0i)), true))), func_3(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))), countOneBits(vec2<i32>(-51227i, 15430i)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(arg_3.c.x, 5947u, 0u, 4294967295u)), u_input.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-215f, arg_0)), _wgslsmith_f_op_f32(-var_2.b.x)))), Struct_1(!(!vec4<bool>(var_2.a.x, true, true, true)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.b.x, 1000f) - var_2.b))), arg_3.c, all(vec3<bool>(true, false, false)))).x, -387f);
    var var_4 = 1i;
    return StorageBuffer(_wgslsmith_add_vec2_u32(select(global2[_wgslsmith_index_u32(4294967295u, 2u)], max(global2[_wgslsmith_index_u32(var_3.c.x, 2u)], u_input.a.yw), !var_2.d) >> (global2[_wgslsmith_index_u32(arg_3.c.x, 2u)] % vec2<u32>(32u)), ~(global2[_wgslsmith_index_u32(~11507u, 2u)] << (vec2<u32>(u_input.c, var_1.x) % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(_wgslsmith_div_f32(345f, -334f), true, global1[_wgslsmith_index_u32(1u, 32u)], func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(843f, 178f)), _wgslsmith_f_op_f32(f32(-1f) * -400f))) + _wgslsmith_f_op_f32(-1734f - -1028f)), _wgslsmith_add_vec2_i32(-(vec2<i32>(global0[_wgslsmith_index_u32(1u, 28u)], -52185i) >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))), vec2<i32>(1i, global0[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(2374u, 14u)], 28u)])), u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(774f + 1540f), -953f)) * 306f)));
}

