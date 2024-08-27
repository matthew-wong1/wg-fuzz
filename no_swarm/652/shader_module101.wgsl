struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7> = array<bool, 7>(false, false, true, false, true, false, false);

var<private> global1: f32;

var<private> global2: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(Struct_2(vec3<i32>(2147483647i, 45179i, -1i), vec3<i32>(-5768i, 0i, -3667i)), vec3<f32>(586f, 1333f, -516f), 649f), Struct_3(Struct_2(vec3<i32>(72727i, -1i, 52334i), vec3<i32>(1i, 1i, -28392i)), vec3<f32>(515f, 453f, -1494f), 1000f), Struct_3(Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, 18600i), vec3<i32>(0i, -8550i, 22233i)), vec3<f32>(-1662f, -2208f, 902f), -1003f), Struct_3(Struct_2(vec3<i32>(43080i, 2147483647i, -36245i), vec3<i32>(18326i, -23971i, i32(-2147483648))), vec3<f32>(-1000f, -491f, 151f), 237f), Struct_3(Struct_2(vec3<i32>(2147483647i, -41124i, 82581i), vec3<i32>(i32(-2147483648), 2147483647i, 0i)), vec3<f32>(-1084f, 221f, 1278f), 1380f), Struct_3(Struct_2(vec3<i32>(-25361i, 17901i, -3707i), vec3<i32>(0i, -27887i, i32(-2147483648))), vec3<f32>(2557f, 799f, 103f), -553f), Struct_3(Struct_2(vec3<i32>(i32(-2147483648), 18848i, -5642i), vec3<i32>(2147483647i, 53296i, i32(-2147483648))), vec3<f32>(-939f, 725f, 1246f), 671f), Struct_3(Struct_2(vec3<i32>(-10181i, 3156i, -21784i), vec3<i32>(-24739i, i32(-2147483648), -17749i)), vec3<f32>(-803f, 1487f, 295f), -2006f), Struct_3(Struct_2(vec3<i32>(-1i, -1i, 2147483647i), vec3<i32>(i32(-2147483648), 2147483647i, 0i)), vec3<f32>(182f, -788f, 1000f), -322f), Struct_3(Struct_2(vec3<i32>(1i, 53060i, -18147i), vec3<i32>(1i, 3773i, 21029i)), vec3<f32>(-1022f, 916f, 245f), 1451f), Struct_3(Struct_2(vec3<i32>(-73666i, -1i, -32396i), vec3<i32>(-1i, 1i, 30529i)), vec3<f32>(-534f, 399f, 649f), 260f), Struct_3(Struct_2(vec3<i32>(-16362i, 48268i, 61618i), vec3<i32>(-22226i, 1i, 24012i)), vec3<f32>(-508f, 493f, -326f), 1000f), Struct_3(Struct_2(vec3<i32>(0i, 1i, -37346i), vec3<i32>(0i, 1i, 20927i)), vec3<f32>(-1000f, -626f, -955f), 943f));

var<private> global3: array<bool, 31>;

var<private> global4: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: vec4<bool>) -> u32 {
    let var_0 = abs(arg_2.x);
    var var_1 = Struct_1(global4.b, u_input.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -326f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(771f, -403f)))))), vec3<u32>(44139u, 4294967295u, 0u), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1951f), _wgslsmith_f_op_f32(f32(-1f) * -277f))), 224f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(606f, 1000f) * vec2<f32>(789f, -117f)))))));
    let var_2 = var_0;
    var_1 = Struct_1(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(firstLeadingBit(var_0), -1i, -var_1.a.x)), var_1.a), 26759u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.e.x)))))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.b, u_input.a, 0u) >> ((var_1.d | var_1.d) % vec3<u32>(32u)), ~vec3<u32>(var_1.b, 0u, var_1.d.x)), _wgslsmith_f_op_vec2_f32(-var_1.e));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.e.x, var_1.c, 758f, var_1.e.x), vec4<f32>(var_1.e.x, var_1.e.x, 983f, var_1.c))))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-var_1.e.x), _wgslsmith_f_op_f32(-var_1.c), -567f, _wgslsmith_f_op_f32(1750f + var_1.c)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-951f, -307f, var_1.e.x, var_1.e.x)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.x, var_1.e.x, -444f, -492f))))));
    return u_input.b;
}

fn func_3(arg_0: u32) -> Struct_4 {
    global3 = array<bool, 31>();
    var var_0 = global2[_wgslsmith_index_u32(~(~firstTrailingBit(_wgslsmith_add_u32(~u_input.b, 1u))), 13u)];
    global1 = 907f;
    var var_1 = min(abs(-reverseBits(-vec4<i32>(var_0.a.b.x, 8234i, global4.a.x, var_0.a.a.x))), vec4<i32>(10289i, (0i ^ var_0.a.a.x) | (reverseBits(var_0.a.a.x) >> (u_input.b % 32u)), -firstTrailingBit(i32(-1i) * -505i), ~global4.a.x));
    var var_2 = -1i ^ global4.b.x;
    return Struct_4(Struct_1(min(var_1.zyy, _wgslsmith_mult_vec3_i32(var_1.zzx, -vec3<i32>(-2275i, -14432i, global4.a.x))), arg_0, _wgslsmith_div_f32(var_0.b.x, 690f), select((vec3<u32>(arg_0, 15827u, u_input.b) & vec3<u32>(7430u, arg_0, 0u)) << (vec3<u32>(1u, arg_0, arg_0) % vec3<u32>(32u)), max(vec3<u32>(4294967295u, 37912u, u_input.b), vec3<u32>(u_input.a, 18585u, arg_0)) << (abs(vec3<u32>(17842u, 31634u, arg_0)) % vec3<u32>(32u)), (false && global3[_wgslsmith_index_u32(arg_0, 31u)]) && all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 7u)], false, false))), _wgslsmith_f_op_vec2_f32(select(var_0.b.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.b.yz, var_0.b.yz)), _wgslsmith_f_op_f32(max(var_0.b.x, 923f)) <= var_0.b.x))));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(((_wgslsmith_add_u32(17819u, 0u) | arg_0.a.b) << (~_wgslsmith_sub_u32(4294967295u, 4294967295u) % 32u)) | ~arg_3.d.x, u_input.b), 13u)];
    var var_1 = abs(arg_3.d.x) <= firstLeadingBit(func_3(0u).a.b);
    let var_2 = -57331i;
    let var_3 = Struct_2(vec3<i32>(-1i) * -global4.a, global4.a);
    global2 = array<Struct_3, 13>();
    return countOneBits(arg_2.a.x);
}

fn func_1(arg_0: vec2<f32>) -> Struct_4 {
    let var_0 = Struct_2(vec3<i32>(-(~(~global4.a.x)), func_4(func_3(func_2(vec3<bool>(global3[_wgslsmith_index_u32(20274u, 31u)], true, global0[_wgslsmith_index_u32(u_input.b, 7u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], true, global3[_wgslsmith_index_u32(u_input.a, 31u)], false), vec4<i32>(global4.b.x, global4.a.x, 6166i, global4.b.x), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 31u)], global0[_wgslsmith_index_u32(u_input.a, 7u)], false, true))), vec2<bool>(true, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 7604u, 0u)), 31u)]), func_3(7095u).a, Struct_1(_wgslsmith_sub_vec3_i32(global4.a, vec3<i32>(global4.a.x, -2147483647i, global4.b.x)), 0u, _wgslsmith_f_op_f32(arg_0.x * 501f), ~vec3<u32>(u_input.b, 16671u, u_input.b), _wgslsmith_f_op_vec2_f32(arg_0 - arg_0))), global4.a.x), -global4.b | -firstLeadingBit(vec3<i32>(26349i, 42467i, global4.b.x) >> (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u))));
    var var_1 = u_input.b;
    let var_2 = select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), select(vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 31u)]), vec2<bool>(global3[_wgslsmith_index_u32(u_input.b, 31u)], global3[_wgslsmith_index_u32(u_input.b, 31u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 7u)], true)), vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 31u)])), !(!vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(0u, 7u)])), select(vec2<bool>(true, true), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 7u)], global3[_wgslsmith_index_u32(u_input.b, 31u)]), true)), !(!global0[_wgslsmith_index_u32(min(u_input.b, 0u), 7u)])), select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 7u)], any(vec3<bool>(global0[_wgslsmith_index_u32(1u, 7u)], false, false))), vec2<bool>(true, !global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.a), vec2<u32>(47667u, u_input.a)), 31u)]), any(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 31u)], true, false, true)) != true), select(vec2<bool>(global0[_wgslsmith_index_u32(43534u & ~u_input.b, 7u)], any(vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 31u)]))), !vec2<bool>(!global3[_wgslsmith_index_u32(11495u, 31u)], true), !(!(!vec2<bool>(global0[_wgslsmith_index_u32(19053u, 7u)], global0[_wgslsmith_index_u32(8351u, 7u)])))));
    var var_3 = !vec3<bool>(~global4.b.x != global4.b.x, !any(!vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 31u)], global3[_wgslsmith_index_u32(4294967295u, 31u)])), !var_2.x);
    var_3 = select(vec3<bool>(all(vec2<bool>(true, true)), var_2.x, global0[_wgslsmith_index_u32(u_input.a, 7u)]), select(!(!select(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 7u)], global3[_wgslsmith_index_u32(u_input.b, 31u)]), vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 31u)], global3[_wgslsmith_index_u32(u_input.b, 31u)], false))), vec3<bool>(true, false, 1f == arg_0.x), vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), vec2<u32>(u_input.a, u_input.b)), 7u)], var_2.x, var_3.x)), vec3<bool>(!((9621u != u_input.b) || global3[_wgslsmith_index_u32(func_2(vec3<bool>(true, true, var_3.x), vec4<bool>(false, true, true, false), vec4<i32>(39741i, 2147483647i, 0i, var_0.b.x), vec4<bool>(true, true, global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(u_input.b, 7u)])), 31u)]), true, global0[_wgslsmith_index_u32(reverseBits(max(0u, u_input.a)), 7u)]));
    return func_3(firstLeadingBit(func_3(~firstTrailingBit(4294967295u)).a.b));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_4) -> Struct_1 {
    return Struct_1(vec3<i32>(~(~(-16076i)) | _wgslsmith_add_i32(_wgslsmith_mult_i32(arg_1.x, 7881i), 1i), firstTrailingBit(_wgslsmith_mod_i32(arg_1.x, 0i)) ^ arg_2.a.a.x, 1i), ~(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(67177u, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, 1u, arg_2.a.d.x, 1u), global0[_wgslsmith_index_u32(22722u, 7u)]), vec4<u32>(4294967295u, u_input.b, u_input.b, arg_2.a.b))), 533f, ~vec3<u32>(4294967295u, arg_2.a.b, countOneBits(~0u)), arg_0.e);
}

fn func_6(arg_0: Struct_4) -> Struct_2 {
    var var_0 = global4.a.yz;
    global4 = Struct_2(_wgslsmith_mult_vec3_i32(global4.a, vec3<i32>(-var_0.x, reverseBits(-36071i), _wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, -14500i), var_0.x))), -select(global4.b, vec3<i32>(~var_0.x, arg_0.a.a.x | var_0.x, -1i), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 7u)], false, global3[_wgslsmith_index_u32(arg_0.a.b, 31u)])));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + arg_0.a.c)));
    let var_2 = vec2<bool>(all(vec3<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(51571u, 7u)], false)) && (arg_0.a.b > 1u), global3[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(4936u, 7u)])), false);
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1129f, arg_0.a.c, 1521f, -283f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1, var_1, 962f, -1212f), vec4<f32>(-990f, -470f, 1171f, arg_0.a.e.x))) - vec4<f32>(arg_0.a.c, arg_0.a.e.x, 297f, 512f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(651f, -1851f, -319f, var_1)))))), vec4<f32>(arg_0.a.c, _wgslsmith_f_op_f32(f32(-1f) * -654f), var_1, func_5(func_5(arg_0.a, select(global4.b, vec3<i32>(32134i, -1i, arg_0.a.a.x), global0[_wgslsmith_index_u32(1015u, 7u)]), Struct_4(arg_0.a)), vec3<i32>(arg_0.a.a.x, -3204i, 2147483647i) >> (~vec3<u32>(23584u, 51471u, 53174u) % vec3<u32>(32u)), Struct_4(Struct_1(vec3<i32>(-17496i, 1i, 2443i), u_input.b, var_1, vec3<u32>(84949u, 0u, 38091u), vec2<f32>(-137f, 1271f)))).c), vec4<bool>(true, global3[_wgslsmith_index_u32(~84884u, 31u)], all(select(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(16989u, 7u)], true), select(vec4<bool>(global3[_wgslsmith_index_u32(arg_0.a.b, 31u)], var_2.x, global3[_wgslsmith_index_u32(u_input.b, 31u)], true), vec4<bool>(false, true, false, true), global3[_wgslsmith_index_u32(arg_0.a.b, 31u)]), false)), all(var_2))));
    return Struct_2(vec3<i32>(_wgslsmith_mult_i32(-var_0.x, global4.a.x) ^ _wgslsmith_div_i32(638i, func_1(var_3.zw).a.a.x), -var_0.x << ((u_input.a & u_input.a) % 32u), _wgslsmith_mult_i32(~(-1i), -firstLeadingBit(2147483647i))), arg_0.a.a ^ -min(abs(vec3<i32>(-1i, -8809i, 2147483647i)), arg_0.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(254f + -183f);
    global3 = array<bool, 31>();
    let var_1 = 1264f;
    global4 = func_6(Struct_4(func_5(Struct_1(vec3<i32>(62098i, -1i, -33859i), ~10161u, var_1, ~vec3<u32>(u_input.b, u_input.b, u_input.b), vec2<f32>(var_0, 631f)), vec3<i32>(~(-1i), global4.a.x, ~global4.b.x), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1045f, -457f) + vec2<f32>(var_1, -2111f))))));
    var var_2 = global2[_wgslsmith_index_u32(u_input.b, 13u)];
    let var_3 = ~u_input.a;
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b.zx) - _wgslsmith_f_op_vec2_f32(floor(var_2.b.xy))))), vec2<f32>(_wgslsmith_div_f32(-850f, _wgslsmith_f_op_f32(round(var_0))), _wgslsmith_f_op_f32(-var_1))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0, var_0))));
    let var_5 = abs(firstTrailingBit(firstLeadingBit(~(vec4<i32>(-19615i, 18470i, global4.b.x, 413i) & vec4<i32>(global4.b.x, var_2.a.b.x, global4.a.x, var_2.a.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(func_6(Struct_4(Struct_1(var_5.zwy >> (vec3<u32>(4294967295u, var_3, var_3) % vec3<u32>(32u)), var_3, var_0, vec3<u32>(u_input.b, 27752u, 92741u), _wgslsmith_f_op_vec2_f32(-var_2.b.yy)))).b.x, vec4<i32>(var_2.a.b.x, -_wgslsmith_mult_i32(-var_5.x, 14516i), ~var_2.a.a.x, 15567i));
}

