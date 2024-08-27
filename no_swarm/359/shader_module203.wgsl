struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(4294967295u, 0u, 0u), vec2<i32>(i32(-2147483648), -8286i), 26395u);

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<u32>(16960u, 0u, 1u), vec2<i32>(22438i, 32210i), 1u), Struct_1(vec3<u32>(29959u, 26082u, 110382u), vec2<i32>(39417i, 13912i), 4294967295u), Struct_1(vec3<u32>(0u, 49196u, 10434u), vec2<i32>(-1i, i32(-2147483648)), 4294967295u), Struct_1(vec3<u32>(1u, 0u, 66180u), vec2<i32>(33018i, -20426i), 30815u), Struct_1(vec3<u32>(23488u, 4294967295u, 0u), vec2<i32>(13212i, 13486i), 4700u), Struct_1(vec3<u32>(4294967295u, 1u, 3186u), vec2<i32>(0i, -3743i), 17016u), Struct_1(vec3<u32>(4294967295u, 1u, 5384u), vec2<i32>(1i, -82033i), 4294967295u), Struct_1(vec3<u32>(5992u, 1u, 60849u), vec2<i32>(21310i, 40232i), 16080u), Struct_1(vec3<u32>(0u, 13802u, 11528u), vec2<i32>(40545i, -1i), 0u), Struct_1(vec3<u32>(1u, 25942u, 4294967295u), vec2<i32>(2147483647i, 2147483647i), 0u));

var<private> global2: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>) -> u32 {
    global2 = Struct_3(Struct_2(-2147483647i, global2.a.b), vec2<bool>(arg_1.x, arg_1.x));
    var var_0 = Struct_3(Struct_2(_wgslsmith_mod_i32(~(-2147483647i), _wgslsmith_sub_i32(0i, 1i)), global2.a.b), vec2<bool>(true, arg_1.x));
    let var_1 = Struct_3(Struct_2(2147483647i, global2.a.b), select(vec2<bool>(!arg_1.x, select(global2.b.x, any(vec4<bool>(arg_1.x, arg_1.x, true, true)), any(vec3<bool>(var_0.b.x, global2.b.x, false)))), global2.b, global2.b));
    global1 = array<Struct_1, 10>();
    var var_2 = var_1.b.x;
    return ~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_0.a.b.a.x, 4967u)), ~abs(vec2<u32>(10083u, arg_0))) & select(_wgslsmith_add_u32((50224u & var_1.a.b.c) | var_1.a.b.a.x, 9645u), ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(9054u, arg_0, 25078u, global2.a.b.c), vec4<u32>(0u, arg_0, var_0.a.b.c, 1u), false), ~vec4<u32>(var_1.a.b.c, 140936u, 4294967295u, global2.a.b.a.x)), true);
}

fn func_2() -> u32 {
    global0 = Struct_1(countOneBits(~vec3<u32>(global2.a.b.c << (18656u % 32u), func_3(global2.a.b.c, vec3<bool>(global2.b.x, true, false)), global0.c)), select(_wgslsmith_sub_vec2_i32(global2.a.b.b & vec2<i32>(29881i, 0i), vec2<i32>(min(0i, u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, global2.a.a, global2.a.b.b.x), vec3<i32>(u_input.a, global2.a.b.b.x, 2147483647i)))), global0.b, any(vec4<bool>(false && global2.b.x, any(global2.b), !global2.b.x, global2.b.x))), ~(~_wgslsmith_mod_u32(4294967295u, 4294967295u)));
    let var_0 = Struct_3(global2.a, select(vec2<bool>(true, false), global2.b, all(vec3<bool>(any(vec4<bool>(false, true, true, global2.b.x)), global2.b.x | true, global2.b.x))));
    var var_1 = var_0.a;
    global2 = Struct_3(Struct_2(~(i32(-1i) * -24197i), global2.a.b), vec2<bool>(true, true));
    global2 = var_0;
    return ~_wgslsmith_div_u32(38380u, 4294967295u);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_3 {
    var var_0 = -787f;
    global2 = Struct_3(Struct_2(global2.a.a, Struct_1(global2.a.b.a, ~(vec2<i32>(30963i, arg_1.b.x) >> (vec2<u32>(global2.a.b.a.x, arg_0.x) % vec2<u32>(32u))), ~(~arg_1.a.x))), vec2<bool>(true, global2.b.x));
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -327f), _wgslsmith_f_op_f32(f32(-1f) * -1649f), _wgslsmith_f_op_f32(abs(-950f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-2300f, 125f, 130f), vec3<f32>(-1000f, -123f, 1150f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1155f, 1000f, -1000f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(180f, 256f, 1059f))))))));
    var var_3 = vec2<bool>(select(global2.b.x, !global2.b.x, true) == global2.b.x, !(true & !any(global2.b)));
    return Struct_3(Struct_2(_wgslsmith_add_i32(global0.b.x, _wgslsmith_mod_i32(1i, u_input.a)) | _wgslsmith_mult_i32(u_input.a, abs(0i)), global1[_wgslsmith_index_u32(0u, 10u)]), vec2<bool>(true, false));
}

fn func_1(arg_0: i32, arg_1: i32) -> vec2<bool> {
    let var_0 = func_4(vec4<u32>(func_2(), _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(global2.a.b.c, 32545u), 8240u), _wgslsmith_mod_u32(8365u, func_2())), ~_wgslsmith_sub_u32(~0u, global0.a.x), _wgslsmith_add_u32(_wgslsmith_sub_u32(select(global0.c, 52994u, false), 32890u & global2.a.b.c), global2.a.b.a.x)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~global0.a.zz, vec2<u32>(~(~66430u), ~_wgslsmith_div_u32(global2.a.b.a.x, global2.a.b.c))), 10u)]);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-718f, -1729f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1070f + 134f) * _wgslsmith_f_op_f32(min(-1134f, 128f))))))) - _wgslsmith_f_op_f32(select(-1702f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(962f + _wgslsmith_f_op_f32(select(858f, 486f, var_0.b.x)))), all(select(!vec4<bool>(false, true, var_0.b.x, false), !vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true), select(vec4<bool>(global2.b.x, true, var_0.b.x, false), vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x), vec4<bool>(var_0.b.x, true, global2.b.x, var_0.b.x)))))));
    global1 = array<Struct_1, 10>();
    global2 = var_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) + vec2<f32>(-380f, 924f)))) + vec2<f32>(var_1, var_1)) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-146f, 675f)))))));
    return func_4(~vec4<u32>(~9138u, 14680u, _wgslsmith_div_u32(global0.a.x, 0u), ~_wgslsmith_dot_vec2_u32(var_0.a.b.a.yz, vec2<u32>(var_0.a.b.a.x, global2.a.b.a.x))), Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, global0.a.x, func_2()), _wgslsmith_div_vec3_u32(var_0.a.b.a, vec3<u32>(global0.a.x, 4294967295u, 4294967295u)) >> (vec3<u32>(45167u, 0u, global0.a.x) % vec3<u32>(32u))), ~_wgslsmith_div_vec2_i32(~vec2<i32>(2147483647i, arg_1), global0.b), ~4294967295u)).b;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_3) -> Struct_1 {
    global1 = array<Struct_1, 10>();
    let var_0 = func_4(vec4<u32>(63171u, ~_wgslsmith_add_u32(min(1u, arg_3.a.b.c), 25058u), arg_2.a.b.a.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.x, arg_3.a.b.c), func_4(vec4<u32>(global0.c, 0u, global0.a.x, global0.c), global2.a.b).a.b.a.zx) % 32u), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.b.c, arg_1.b.c, arg_2.a.b.a.x, global0.a.x), vec4<u32>(arg_1.b.a.x, 0u, arg_3.a.b.c, arg_3.a.b.c)) << (~133439u % 32u), arg_3.a.b.a.x)), arg_2.a.b).a.b;
    global2 = arg_3;
    var var_1 = ~((_wgslsmith_mult_i32(i32(-1i) * -1i, 1i) ^ var_0.b.x) | arg_3.a.a);
    var_1 = 19823i;
    return Struct_1(arg_1.b.a, countOneBits(vec2<i32>(-2147483647i, ~_wgslsmith_sub_i32(arg_3.a.b.b.x, -4183i))), ~(arg_3.a.b.a.x >> (~abs(arg_1.b.a.x) % 32u)));
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = vec3<bool>(arg_0, true, true);
    let var_1 = 1u;
    global1 = array<Struct_1, 10>();
    let var_2 = _wgslsmith_sub_u32(var_1, 11166u) < func_3(_wgslsmith_mod_u32(68472u, reverseBits(global0.a.x)), vec3<bool>(!arg_0, global2.b.x, false));
    global0 = Struct_1(~global2.a.b.a, ~vec2<i32>(-27587i << (global2.a.b.c % 32u), -u_input.a) << (_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1, var_1), global2.a.b.a.zy), global0.a.zy) % vec2<u32>(32u)), 4294967295u);
    return global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.a.x, global2.a.b.c), 10u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 10>();
    global0 = func_6(true, func_5(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-521f - -698f)), 1f), global2.a, Struct_3(global2.a, vec2<bool>(false, !global2.b.x)), Struct_3(Struct_2(u_input.a, global2.a.b), select(!global2.b, func_1(u_input.a, global0.b.x), global2.b))), global2.a.b.a.x);
    let var_0 = _wgslsmith_add_vec3_i32(~(vec3<i32>(_wgslsmith_mod_i32(global0.b.x, u_input.a), func_4(vec4<u32>(global0.a.x, global0.c, global2.a.b.c, global2.a.b.c), Struct_1(global0.a, vec2<i32>(u_input.a, -1i), global0.c)).a.b.b.x, -1i) | min(_wgslsmith_sub_vec3_i32(vec3<i32>(29101i, -1i, 1537i), vec3<i32>(-52164i, global0.b.x, -14750i)), vec3<i32>(0i, -2147483647i, 36530i))), vec3<i32>(-1i, 2566i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~global0.b, countOneBits(vec2<i32>(0i, u_input.a))), abs(-27635i))));
    let var_1 = -vec2<i32>(u_input.a, i32(-1i) * -global2.a.a);
    let var_2 = _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(func_6(true, global1[_wgslsmith_index_u32(1u, 10u)], countOneBits(global0.a.x)).a.xx & vec2<u32>(647u, _wgslsmith_add_u32(global2.a.b.c, global2.a.b.c)), select(firstLeadingBit(vec2<u32>(global0.a.x, global0.a.x)), ~(~global0.a.zy), true || (global2.b.x && global2.b.x))), global0.a.zz);
    var var_3 = Struct_2(func_4(firstTrailingBit(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, 84170u, global0.c, var_2.x), vec4<u32>(0u, 1u, global2.a.b.c, 61690u)), vec4<u32>(1u, 0u, 4294967295u, global2.a.b.c))), global1[_wgslsmith_index_u32(var_2.x, 10u)]).a.b.b.x, func_6(true || global2.b.x, global2.a.b, global0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(reverseBits(~vec4<u32>(1u, 1u, 1u, 1u))));
}

