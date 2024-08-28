struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<bool>,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(955f, false, vec2<bool>(true, false), vec4<f32>(-1093f, 100f, -285f, 218f), vec4<i32>(-15860i, 2147483647i, 0i, -42744i));

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(-712f, true, vec2<bool>(true, true), vec4<f32>(402f, -231f, 121f, -1399f), vec4<i32>(-20383i, 37296i, -1i, -44349i)), Struct_1(-316f, true, vec2<bool>(true, true), vec4<f32>(-590f, -235f, 1595f, -1455f), vec4<i32>(22354i, -1i, 0i, 0i)), Struct_1(-703f, true, vec2<bool>(true, true), vec4<f32>(-812f, 252f, 281f, -491f), vec4<i32>(46791i, 1i, 2147483647i, 15694i)), Struct_1(333f, false, vec2<bool>(false, true), vec4<f32>(811f, -449f, -345f, 708f), vec4<i32>(-4779i, -56883i, -1i, i32(-2147483648))), Struct_1(-1648f, false, vec2<bool>(true, false), vec4<f32>(-289f, 1310f, -812f, 1068f), vec4<i32>(8838i, -8391i, 65134i, 2147483647i)), Struct_1(1125f, false, vec2<bool>(true, false), vec4<f32>(-1122f, -586f, -521f, 111f), vec4<i32>(-29146i, -1i, 8301i, -27055i)), Struct_1(-519f, false, vec2<bool>(false, false), vec4<f32>(-323f, -2051f, -1115f, 1077f), vec4<i32>(-6534i, -10959i, 1i, -850i)), Struct_1(-2185f, true, vec2<bool>(false, true), vec4<f32>(1604f, 1000f, 297f, 1133f), vec4<i32>(-1i, -31837i, 1i, 10944i)), Struct_1(191f, false, vec2<bool>(true, false), vec4<f32>(-596f, -294f, 636f, -243f), vec4<i32>(-21048i, 2147483647i, 1i, 36372i)));

var<private> global2: vec2<f32>;

var<private> global3: array<u32, 27> = array<u32, 27>(43814u, 4294967295u, 84865u, 2197u, 0u, 1u, 10920u, 60164u, 20840u, 4294967295u, 0u, 53611u, 1u, 79625u, 51824u, 0u, 4294967295u, 36845u, 11023u, 1u, 15221u, 0u, 29104u, 10471u, 0u, 3384u, 3488u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, 0u), 9u)];
    let var_1 = _wgslsmith_clamp_i32(~(i32(-1i) * -2147483647i) >> (_wgslsmith_add_u32(global3[_wgslsmith_index_u32(u_input.b, 27u)], global3[_wgslsmith_index_u32((u_input.e.x << (u_input.d.x % 32u)) | 0u, 27u)]) % 32u), -1i, ~u_input.a);
    let var_2 = var_0.c;
    var var_3 = any(!(!arg_0.c));
    var var_4 = global2.x;
    return vec4<u32>(118676u, _wgslsmith_dot_vec4_u32(~vec4<u32>(43508u, global3[_wgslsmith_index_u32(30750u, 27u)], u_input.b, global3[_wgslsmith_index_u32(57930u, 27u)]), vec4<u32>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1404u, 0u), 27u)], 1u, abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(18450u, 27u)], 27u)], 27u)], 27u)]), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(23719u, 27u)], 27u)] & 4294967295u)), u_input.e.x, 1u) << (select(~abs(~vec4<u32>(4294967295u, u_input.d.x, global3[_wgslsmith_index_u32(u_input.b, 27u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)])), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d.x, 27u)], 27u)], 14975u, 1u, 24346u), vec4<u32>(u_input.e.x, u_input.e.x, u_input.c.x, u_input.b)), ~11847u, global3[_wgslsmith_index_u32(~1u, 27u)], 73501u), arg_0.b && true) % vec4<u32>(32u));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    let var_0 = global2.x;
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(min(arg_0.x, global0.d.x))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.x, global0.a))))))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0.x, -1304f)), _wgslsmith_f_op_f32(-global0.d.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.x + global0.a)))));
    var var_1 = global1[_wgslsmith_index_u32(firstTrailingBit(u_input.e.x | 3322u), 9u)];
    var var_2 = Struct_2(_wgslsmith_dot_vec3_i32(-var_1.e.zxw, abs(select(global0.e.yxz, vec3<i32>(u_input.a, -2147483647i, 1i), global0.b)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(70939u, 27u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 27u)], 27u)], 27u)], 27u)], 46573u), vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(15575u, 27u)], u_input.d.x) ^ u_input.d) % vec3<u32>(32u))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(firstTrailingBit(4294967295u), min(u_input.c.x, global3[_wgslsmith_index_u32(4294967295u, 27u)])), global3[_wgslsmith_index_u32(4294967295u, 27u)]), ~_wgslsmith_dot_vec4_u32(vec4<u32>(12309u, global3[_wgslsmith_index_u32(327u, 27u)], global3[_wgslsmith_index_u32(u_input.d.x, 27u)], 67637u), vec4<u32>(73143u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 27u)], 27u)], 57896u, 0u)) >> (max(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 27u)], 27u)] >> (u_input.d.x % 32u), _wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(38839u, 27u)], 27u)], u_input.b, 22643u)) % 32u)), 1000f, 1f);
    global2 = var_1.d.yy;
    return 1142f;
}

fn func_2() -> Struct_1 {
    let var_0 = global0.b;
    let var_1 = global2.x;
    global2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.d.xx - global0.d.wx))), vec2<f32>(_wgslsmith_f_op_f32(global0.a - global2.x), _wgslsmith_f_op_f32(step(global0.a, -252f))), false)), global0.d.yy);
    global0 = Struct_1(-1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))) != global0.a, !vec2<bool>((global0.c.x & false) == true, any(select(vec4<bool>(true, global0.b, global0.c.x, global0.b), vec4<bool>(global0.c.x, global0.b, global0.c.x, global0.c.x), vec4<bool>(true, global0.c.x, true, false)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(global0.d)), -1068f), _wgslsmith_f_op_f32(max(global0.d.x, _wgslsmith_f_op_f32(min(692f, global2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * -2075f) + _wgslsmith_f_op_f32(exp2(global0.a)))))), global0.e);
    global1 = array<Struct_1, 9>();
    return Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global0.d.x))))))), global0.c.x, vec2<bool>(global0.b == global0.c.x, !(!all(global0.c))), vec4<f32>(1000f, global0.d.x, _wgslsmith_f_op_f32(trunc(937f)), _wgslsmith_f_op_f32(-global2.x)), global0.e);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_2 {
    global0 = arg_1;
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(869f - _wgslsmith_f_op_f32(529f + global2.x)) - 453f)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_1.e.x, -44534i, 1i) | (i32(-1i) * -10463i), -51788i) >= global0.e.x, !global0.c, vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(max(1240f, global0.a)))), arg_1.d.x, global0.d.x), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.e.x, arg_1.e.x, ~func_2().e.x, ~1i), select(firstLeadingBit(-vec4<i32>(-1i, global0.e.x, u_input.a, u_input.a)), global0.e, select(!vec4<bool>(true, true, arg_1.b, global0.b), !vec4<bool>(false, false, true, global0.b), !vec4<bool>(arg_1.c.x, global0.c.x, true, global0.b)))));
    global1 = array<Struct_1, 9>();
    let var_0 = ~(~u_input.d.zy);
    let var_1 = Struct_1(759f, arg_1.c.x, global0.c, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.a, global0.d.x, global0.a, arg_1.d.x))))), _wgslsmith_f_op_vec4_f32(-global0.d))), -(~global0.e));
    return Struct_2(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(8638i, ~var_1.e.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, 0i, var_1.e.x, arg_0.x), arg_1.e)), firstLeadingBit(7424i)) | 46652i, 15847u, var_1.d.x, _wgslsmith_f_op_f32(sign(-532f)));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: Struct_2) -> vec2<bool> {
    var var_0 = vec4<u32>(~(~(countOneBits(1u) | _wgslsmith_dot_vec4_u32(vec4<u32>(35422u, u_input.e.x, arg_1.x, u_input.e.x), arg_0))), arg_0.x, _wgslsmith_mod_u32(~countOneBits(arg_0.x), 0u), abs(~countOneBits(arg_0.x ^ arg_1.x)));
    var var_1 = func_2();
    let var_2 = abs(var_0.xxw >> (var_0.zyw % vec3<u32>(32u)));
    var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(func_1(global1[_wgslsmith_index_u32(~(4294967295u ^ var_2.x), 9u)]), firstLeadingBit(arg_0) ^ _wgslsmith_clamp_vec4_u32(arg_0 << (vec4<u32>(var_2.x, 67738u, global3[_wgslsmith_index_u32(17393u, 27u)], arg_1.x) % vec4<u32>(32u)), abs(arg_0), countOneBits(arg_0))), ~var_0.x, 1u, ~var_2.x);
    var var_3 = 10075u;
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~(~reverseBits(vec4<u32>(global3[_wgslsmith_index_u32(0u, 27u)], global3[_wgslsmith_index_u32(u_input.e.x, 27u)], u_input.b, 30800u)) | func_1(global1[_wgslsmith_index_u32(firstLeadingBit(1u), 9u)])), _wgslsmith_mod_vec2_u32(u_input.c.xz, ~(u_input.c.zy << (u_input.e % vec2<u32>(32u))) >> (~(~vec2<u32>(u_input.d.x, 1u)) % vec2<u32>(32u))), func_4(-(vec3<i32>(0i, global0.e.x, 11678i) << (u_input.d % vec3<u32>(32u))) >> (vec3<u32>(1u, firstLeadingBit(u_input.b), ~u_input.d.x) % vec3<u32>(32u)), func_2()));
    global0 = global1[_wgslsmith_index_u32(98687u, 9u)];
    global0 = global1[_wgslsmith_index_u32(~(~global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_sub_u32(5266u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 27u)], 27u)]) >> ((1371u & u_input.d.x) % 32u)), 27u)]), 9u)];
    global0 = Struct_1(_wgslsmith_f_op_f32(480f * -599f), all(select(var_0, !func_5(vec4<u32>(u_input.e.x, 0u, 1u, u_input.d.x), u_input.c.xz, Struct_2(u_input.a, 6185u, -185f, global0.a)), var_0.x)), func_2().c, global0.d, vec4<i32>(1i, _wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_mod_vec2_i32(global0.e.zw, global0.e.xw)), global0.e.zy), -func_4(select(vec3<i32>(19731i, -1i, -25006i), vec3<i32>(-15084i, global0.e.x, global0.e.x), vec3<bool>(true, var_0.x, global0.c.x)), Struct_1(-523f, false, global0.c, vec4<f32>(global0.d.x, 826f, global2.x, 216f), global0.e)).a, ~(~2147483647i) << (countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(10461u, 75453u), vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(u_input.d.x, 27u)]))) % 32u)));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(func_4(~vec3<i32>(global0.e.x, firstTrailingBit(global0.e.x), -42309i), func_2()).b, 25671u), 9u)];
    let var_2 = _wgslsmith_add_i32(_wgslsmith_add_i32(2147483647i, select(u_input.a, u_input.a, func_2().b)), i32(-1i) * -global0.e.x);
    let var_3 = ~u_input.b << (select(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(reverseBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d.x ^ 1u, 27u)], 27u)]), 27u)], 27u)], ~u_input.b, false) % 32u);
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.d.xx, var_1.d.yx)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-688f, 868f), var_1.d.zw, var_1.c))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.d.yy, vec2<f32>(global0.a, 253f), all(vec4<bool>(var_0.x, var_1.b, false, var_0.x)))), global0.d.zy));
    global1 = array<Struct_1, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(min(~(-var_1.e.x), -_wgslsmith_div_i32(select(u_input.a, 2147483647i, false), ~var_2)));
}

