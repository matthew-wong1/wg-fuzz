struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

var<private> global1: array<u32, 4> = array<u32, 4>(5216u, 1u, 27493u, 2682u);

var<private> global2: array<bool, 7> = array<bool, 7>(true, true, false, true, false, true, true);

var<private> global3: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec2<bool>(false, true), 45589u, vec4<i32>(-1i, 0i, 11939i, -27449i), vec4<i32>(2147483647i, 29860i, -39213i, 2147483647i)), Struct_1(vec2<bool>(true, false), 3263u, vec4<i32>(11541i, i32(-2147483648), -28936i, 2147483647i), vec4<i32>(0i, -6697i, i32(-2147483648), -1i)), Struct_1(vec2<bool>(false, true), 0u, vec4<i32>(0i, 57713i, 1i, i32(-2147483648)), vec4<i32>(30028i, 2147483647i, 0i, 2147483647i)), Struct_1(vec2<bool>(false, true), 48918u, vec4<i32>(i32(-2147483648), -1i, 0i, 0i), vec4<i32>(0i, 20536i, i32(-2147483648), 11899i)), Struct_1(vec2<bool>(true, false), 1u, vec4<i32>(0i, 2147483647i, 1i, -14759i), vec4<i32>(36344i, 3330i, -83507i, 3756i)), Struct_1(vec2<bool>(false, true), 41151u, vec4<i32>(i32(-2147483648), 4188i, 2147483647i, -1340i), vec4<i32>(1i, -25508i, 0i, 101381i)), Struct_1(vec2<bool>(false, false), 4294967295u, vec4<i32>(-1i, 2147483647i, 29518i, -1i), vec4<i32>(2147483647i, -22358i, i32(-2147483648), 17104i)), Struct_1(vec2<bool>(true, false), 1u, vec4<i32>(2147483647i, -28041i, 1i, 39830i), vec4<i32>(40355i, 30577i, -5190i, i32(-2147483648))), Struct_1(vec2<bool>(true, false), 1u, vec4<i32>(2147483647i, -16557i, 2147483647i, -8417i), vec4<i32>(2830i, i32(-2147483648), 2147483647i, -43579i)), Struct_1(vec2<bool>(true, true), 43452u, vec4<i32>(i32(-2147483648), 1i, -12477i, -54103i), vec4<i32>(i32(-2147483648), 38581i, -8708i, -922i)), Struct_1(vec2<bool>(false, false), 1u, vec4<i32>(-11133i, 0i, -1i, -31660i), vec4<i32>(1i, 32305i, -9064i, 21869i)), Struct_1(vec2<bool>(true, false), 4294967295u, vec4<i32>(-1i, i32(-2147483648), 1i, 2147483647i), vec4<i32>(0i, 1i, i32(-2147483648), i32(-2147483648))), Struct_1(vec2<bool>(false, false), 4294967295u, vec4<i32>(-1i, -54698i, -1i, -75312i), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, -16923i)), Struct_1(vec2<bool>(false, true), 74575u, vec4<i32>(42646i, 17497i, 2147483647i, 7774i), vec4<i32>(2147483647i, -42236i, 1i, 0i)), Struct_1(vec2<bool>(false, true), 0u, vec4<i32>(2147483647i, 1i, i32(-2147483648), -11042i), vec4<i32>(1i, i32(-2147483648), 11766i, -3300i)));

var<private> global4: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(vec2<i32>(-1i, 2147483647i), Struct_1(vec2<bool>(true, true), 45794u, vec4<i32>(50451i, 12651i, -13730i, -29950i), vec4<i32>(2147483647i, 1i, -1i, -12235i)), Struct_2(Struct_1(vec2<bool>(true, true), 0u, vec4<i32>(-31513i, 8350i, 39809i, 36393i), vec4<i32>(26697i, i32(-2147483648), -1i, 30157i))), false), Struct_4(vec2<i32>(-42853i, -40251i), Struct_1(vec2<bool>(false, true), 16889u, vec4<i32>(-23814i, i32(-2147483648), 1i, i32(-2147483648)), vec4<i32>(1i, 2147483647i, 10464i, 6528i)), Struct_2(Struct_1(vec2<bool>(false, false), 0u, vec4<i32>(1i, 3736i, 1i, 2147483647i), vec4<i32>(69312i, -1048i, 36157i, -47766i))), false), Struct_4(vec2<i32>(2147483647i, 19993i), Struct_1(vec2<bool>(false, false), 4294967295u, vec4<i32>(0i, 41769i, -1i, -20241i), vec4<i32>(-23322i, 0i, -23861i, i32(-2147483648))), Struct_2(Struct_1(vec2<bool>(true, true), 0u, vec4<i32>(1i, 2147483647i, 1i, 0i), vec4<i32>(-28627i, i32(-2147483648), 1i, i32(-2147483648)))), true), Struct_4(vec2<i32>(-47219i, i32(-2147483648)), Struct_1(vec2<bool>(true, false), 1u, vec4<i32>(-1619i, -3028i, -1i, 13266i), vec4<i32>(-65282i, 0i, 27937i, 0i)), Struct_2(Struct_1(vec2<bool>(true, false), 0u, vec4<i32>(2147483647i, -44618i, 0i, -35674i), vec4<i32>(1i, i32(-2147483648), -1i, 2147483647i))), true), Struct_4(vec2<i32>(43667i, 3546i), Struct_1(vec2<bool>(true, true), 0u, vec4<i32>(2147483647i, -1i, -96605i, 1i), vec4<i32>(0i, 1i, -1i, -6435i)), Struct_2(Struct_1(vec2<bool>(false, false), 1u, vec4<i32>(-1i, 1i, 1i, 32537i), vec4<i32>(1i, i32(-2147483648), 1i, 0i))), false), Struct_4(vec2<i32>(-6370i, -48716i), Struct_1(vec2<bool>(false, true), 31608u, vec4<i32>(-15442i, -39219i, -12800i, 9734i), vec4<i32>(30113i, i32(-2147483648), 1i, 27371i)), Struct_2(Struct_1(vec2<bool>(true, true), 64745u, vec4<i32>(-12358i, 50389i, 2147483647i, 2147483647i), vec4<i32>(10103i, -7719i, 2147483647i, 0i))), false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_2(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u | _wgslsmith_dot_vec4_u32(u_input.a ^ ~vec4<u32>(26925u, global1[_wgslsmith_index_u32(arg_0.b, 4u)], 4294967295u, arg_0.b), ~_wgslsmith_mult_vec4_u32(u_input.a, u_input.a)), 4u)], 15u)]);
    var_0 = Struct_2(Struct_1(!var_0.a.a, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a.x, global1[_wgslsmith_index_u32(arg_0.b << (u_input.a.x % 32u), 4u)]), 1u), 4u)], firstTrailingBit(-_wgslsmith_mod_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], arg_0.d.x, -1i, var_0.a.c.x), vec4<i32>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], arg_0.d.x, -11349i))), reverseBits(abs(vec4<i32>(var_0.a.c.x, 1i, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(var_0.a.b, 5u)]))) ^ (arg_0.c >> ((u_input.a & u_input.a) % vec4<u32>(32u)))));
    let var_1 = Struct_2(Struct_1(var_0.a.a, 1u, arg_0.c, vec4<i32>(1i, i32(-1i) * -2147483647i, global0[_wgslsmith_index_u32(0u, 5u)], arg_0.c.x)));
    return 1u;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec3<u32> {
    var var_0 = Struct_4(arg_2.c.yw, Struct_1(vec2<bool>(any(select(vec3<bool>(false, true, global2[_wgslsmith_index_u32(arg_0.a.b, 7u)]), vec3<bool>(arg_0.a.a.x, arg_0.a.a.x, false), arg_0.a.a.x)), true), firstTrailingBit(arg_2.b), ~(reverseBits(vec4<i32>(-1i, 0i, arg_0.a.c.x, arg_0.a.c.x)) << ((u_input.a << (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<i32>(arg_1.c.x, -1466i, 1i, firstLeadingBit(8684i))), Struct_2(arg_2), false & any(!select(vec3<bool>(arg_2.a.x, arg_1.a.x, arg_2.a.x), vec3<bool>(false, global2[_wgslsmith_index_u32(arg_2.b, 7u)], false), vec3<bool>(arg_1.a.x, arg_2.a.x, false))));
    var var_1 = abs(max(1i, ~arg_0.a.c.x));
    return vec3<u32>(u_input.a.x, 1u, min(u_input.a.x, 4294967295u));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> u32 {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, arg_0.b, arg_0.b | 4294967295u), arg_1.xwy), _wgslsmith_div_u32(global1[_wgslsmith_index_u32(116356u, 4u)], ~_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(34645u, 4u)], arg_0.b)), 1u) << (_wgslsmith_div_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(0u, 4u)] >> (~70135u % 32u), 30230u >> (firstTrailingBit(19864u) % 32u), 25776u), func_3(Struct_2(Struct_1(arg_0.a, arg_0.b, vec4<i32>(arg_0.c.x, global0[_wgslsmith_index_u32(arg_1.x, 5u)], arg_0.d.x, 1i), vec4<i32>(arg_0.d.x, global0[_wgslsmith_index_u32(arg_1.x, 5u)], -2147483647i, global0[_wgslsmith_index_u32(1u, 5u)]))), Struct_1(!arg_0.a, _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 1u, u_input.a.x), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(503u, 5u)], -15711i, global0[_wgslsmith_index_u32(arg_1.x, 5u)]), -arg_0.c), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(19782u, 0u, u_input.a.x >> (44537u % 32u)), 15u)], _wgslsmith_f_op_f32(f32(-1f) * -927f))) % vec3<u32>(32u));
    let var_1 = vec3<i32>(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(90578u, 5u)], abs(abs(abs(-14844i)))), 44218i, ~(_wgslsmith_div_i32(arg_0.d.x, -arg_0.d.x) >> (1u % 32u)));
    let var_2 = i32(-1i) * -(~1i);
    global1 = array<u32, 4>();
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(953f + _wgslsmith_f_op_f32(min(-2450f, -467f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    return abs(~countOneBits(arg_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 4>();
    global3 = array<Struct_1, 15>();
    var var_0 = Struct_1(vec2<bool>(all(!vec3<bool>(true, false, global2[_wgslsmith_index_u32(4294967295u, 7u)])), all(select(vec4<bool>(true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], 4u)], 7u)], true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 4u)], 7u)]), vec4<bool>(true, false, global2[_wgslsmith_index_u32(54878u, 7u)], false), any(vec4<bool>(global2[_wgslsmith_index_u32(4490u, 7u)], global2[_wgslsmith_index_u32(u_input.a.x, 7u)], true, false))))), firstLeadingBit(func_1(Struct_1(select(vec2<bool>(false, true), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 7u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 4u)], 7u)]), global2[_wgslsmith_index_u32(0u, 7u)]), ~64705u, vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], 5u)], global0[_wgslsmith_index_u32(0u, 5u)], 0i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(24027u, 5u)], 2147483647i, 28028i)))), firstTrailingBit(vec4<i32>(0i, ~global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 4u)] & u_input.a.x, 5u)], i32(-1i) * -global0[_wgslsmith_index_u32(72610u, 5u)], 0i)), vec4<i32>(_wgslsmith_sub_i32(~(-52479i), 46743i), global0[_wgslsmith_index_u32(0u, 5u)], ~(global0[_wgslsmith_index_u32(34939u, 5u)] << (u_input.a.x % 32u)), firstTrailingBit(1i)) | ~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(42165u, 5u)], -19823i), vec2<i32>(global0[_wgslsmith_index_u32(21698u, 5u)], global0[_wgslsmith_index_u32(81585u, 5u)])), 1i, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], -21165i), ~(-40732i)));
    var var_1 = _wgslsmith_f_op_f32(-784f - 1f);
    var var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b, func_2(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(22292u, 4402u) ^ u_input.a.x, 15u)], ~(u_input.a & u_input.a)), 1u, _wgslsmith_add_u32(~(u_input.a.x | 4294967295u), 73944u)), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1158f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -459f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-619f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -184f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(472f + -632f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-539f + -658f))))));
}

