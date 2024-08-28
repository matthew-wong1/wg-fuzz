struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: u32,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec4<u32>(65179u, 3714u, 1u, 31964u), vec2<bool>(false, false), 1u, vec3<f32>(-1000f, -1127f, 681f), vec3<i32>(-20817i, -1i, 12538i)), Struct_1(vec4<u32>(68435u, 0u, 0u, 70277u), vec2<bool>(false, false), 1u, vec3<f32>(476f, -464f, -598f), vec3<i32>(0i, 23655i, -22365i)), Struct_1(vec4<u32>(33712u, 13400u, 15982u, 26914u), vec2<bool>(true, true), 20434u, vec3<f32>(-144f, -625f, -126f), vec3<i32>(i32(-2147483648), 47755i, i32(-2147483648))), Struct_1(vec4<u32>(4294967295u, 5564u, 138466u, 1u), vec2<bool>(false, false), 36090u, vec3<f32>(-1000f, -1278f, 2895f), vec3<i32>(8389i, 0i, -75180i)), Struct_1(vec4<u32>(57558u, 44802u, 0u, 56598u), vec2<bool>(true, false), 1u, vec3<f32>(1000f, 978f, -1211f), vec3<i32>(72495i, 0i, 0i)), Struct_1(vec4<u32>(25794u, 32833u, 97113u, 31713u), vec2<bool>(true, true), 10807u, vec3<f32>(1335f, 342f, 1243f), vec3<i32>(1i, -29778i, 22144i)), Struct_1(vec4<u32>(50092u, 0u, 1u, 1u), vec2<bool>(false, true), 4294967295u, vec3<f32>(-1009f, 821f, -332f), vec3<i32>(2147483647i, -22856i, 5196i)), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 43828u), vec2<bool>(true, true), 60445u, vec3<f32>(-1096f, -1633f, 532f), vec3<i32>(i32(-2147483648), -59014i, 24164i)), Struct_1(vec4<u32>(46147u, 1u, 20454u, 4294967295u), vec2<bool>(true, true), 1u, vec3<f32>(1000f, -2815f, -1205f), vec3<i32>(i32(-2147483648), -675i, -7605i)), Struct_1(vec4<u32>(4294967295u, 0u, 1u, 4294967295u), vec2<bool>(false, false), 41906u, vec3<f32>(1259f, -655f, -891f), vec3<i32>(17307i, 0i, 2147483647i)), Struct_1(vec4<u32>(17026u, 89457u, 0u, 96641u), vec2<bool>(false, false), 8227u, vec3<f32>(1493f, -1521f, 733f), vec3<i32>(2147483647i, 2147483647i, -1i)), Struct_1(vec4<u32>(1u, 12777u, 54327u, 1418u), vec2<bool>(true, true), 4294967295u, vec3<f32>(281f, -815f, -1000f), vec3<i32>(2147483647i, -4302i, 43033i)));

var<private> global1: u32 = 0u;

var<private> global2: vec4<bool> = vec4<bool>(true, false, false, false);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool) -> i32 {
    global0 = array<Struct_1, 12>();
    global2 = !(!vec4<bool>(true, arg_1, any(select(vec4<bool>(false, global2.x, global2.x, global2.x), vec4<bool>(true, false, false, false), vec4<bool>(false, arg_1, arg_1, arg_1))), global2.x));
    let var_0 = u_input.c & ~(~(~_wgslsmith_dot_vec2_u32(arg_0.xx, vec2<u32>(33431u, 0u))));
    var var_1 = Struct_4(-(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a.x, 1i, -36033i), vec4<i32>(u_input.a.x, -1i, 17660i, u_input.a.x)), u_input.a.x, u_input.b.x) >> ((arg_0 & arg_0) % vec3<u32>(32u))), reverseBits(vec2<i32>(u_input.a.x, u_input.a.x)), arg_1, any(vec3<bool>(var_0 < 49458u, false, true)) && global2.x);
    global1 = 28527u;
    return -1i;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<f32>) -> u32 {
    var var_0 = Struct_4(vec3<i32>(func_3(arg_0, global2.x), select(-firstLeadingBit(u_input.a.x), -1i, _wgslsmith_f_op_f32(-1974f + 430f) > _wgslsmith_f_op_f32(arg_1.x - 770f)), abs(-2147483647i)), _wgslsmith_sub_vec2_i32(reverseBits(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, u_input.a.x), vec2<i32>(1i, u_input.a.x)), vec2<i32>(-6007i, -2147483647i))), u_input.a), false, any(!vec3<bool>(global2.x, true, global2.x)));
    let var_1 = Struct_3(~(~vec2<u32>(~33468u, u_input.c)), abs(vec4<u32>(28770u, arg_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0.x, 4294967295u, u_input.c), vec4<u32>(u_input.c, arg_0.x, u_input.c, 21701u)) | _wgslsmith_dot_vec3_u32(vec3<u32>(82266u, 82154u, 1u), vec3<u32>(3964u, arg_0.x, u_input.c)), ~(arg_0.x << (49024u % 32u)))), arg_1.wy);
    var var_2 = global0[_wgslsmith_index_u32(54612u, 12u)];
    let var_3 = Struct_4(vec3<i32>(var_0.a.x, var_0.b.x, 0i), vec2<i32>(0i, max(var_0.a.x << (reverseBits(4294967295u) % 32u), ~abs(-47462i))), global2.x, all(!select(select(vec2<bool>(true, var_0.d), var_2.b, vec2<bool>(var_2.b.x, true)), vec2<bool>(true, true), vec2<bool>(false, var_2.b.x))));
    return u_input.c | _wgslsmith_dot_vec2_u32(~(~vec2<u32>(32369u, var_1.b.x)) ^ ~_wgslsmith_div_vec2_u32(var_1.a, var_1.a), vec2<u32>(_wgslsmith_sub_u32(u_input.c, ~4294967295u), ~var_2.a.x));
}

fn func_4(arg_0: u32, arg_1: vec3<f32>) -> vec2<f32> {
    global2 = vec4<bool>(global2.x, !all(select(vec2<bool>(global2.x, true), global2.zy, global2.xw)), global2.x, global2.x);
    var var_0 = abs(~select(vec2<u32>(1u, 1u), ~vec2<u32>(u_input.c, 42025u), select(vec2<bool>(global2.x, global2.x), select(global2.yy, global2.wx, global2.ww), select(vec2<bool>(true, true), global2.xy, vec2<bool>(true, false)))));
    let var_1 = ~(~func_2(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c, var_0.x, u_input.c), vec3<u32>(0u, u_input.c, u_input.c) >> (vec3<u32>(arg_0, 0u, 4294967295u) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(414f, -153f, arg_1.x, arg_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -771f, 1236f, arg_1.x))))));
    var_0 = abs(~(vec2<u32>(u_input.c, func_2(vec3<u32>(0u, arg_0, 1u), vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))) ^ reverseBits(~vec2<u32>(90289u, u_input.c))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_1, 4294967295u, var_0.x) ^ vec3<u32>(u_input.c, 0u, u_input.c), vec3<u32>(4294967295u, 1u, var_1) << (vec3<u32>(7143u, u_input.c, 12072u) % vec3<u32>(32u))), countOneBits(vec3<u32>(var_1 >> (var_0.x % 32u), 1u, ~33407u))) << (firstLeadingBit(_wgslsmith_add_u32(1u << (~u_input.c % 32u), ~u_input.c)) % 32u), 12u)];
    return var_2.d.yy;
}

fn func_1(arg_0: vec2<bool>) -> vec4<bool> {
    var var_0 = Struct_4(~vec3<i32>(_wgslsmith_add_i32(-25178i | u_input.a.x, u_input.a.x), select(u_input.b.x, -u_input.b.x, false), u_input.b.x | u_input.b.x), u_input.b, false, true);
    var var_1 = Struct_3(~(~vec2<u32>(u_input.c, _wgslsmith_add_u32(u_input.c, u_input.c))), firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 30932u), vec3<u32>(4294967295u, 9868u, u_input.c)), _wgslsmith_sub_u32(u_input.c, u_input.c), 0u, 16714u) >> ((firstTrailingBit(vec4<u32>(4294967295u, 0u, u_input.c, 8408u)) >> (~vec4<u32>(0u, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(func_4(func_2(~(vec3<u32>(u_input.c, u_input.c, 8930u) & vec3<u32>(22607u, u_input.c, 1u)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1463f), _wgslsmith_f_op_f32(f32(-1f) * -2447f), 1447f, _wgslsmith_f_op_f32(332f + -758f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(214f))), _wgslsmith_f_op_f32(select(2071f, -611f, var_0.b.x < 15171i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-685f, -747f)))))));
    global0 = array<Struct_1, 12>();
    var var_2 = !any(global2.wyy);
    var var_3 = global0[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(0u, 61791u)), 12u)];
    return select(vec4<bool>(~abs(30385i) > var_3.e.x, !(!var_0.c), true, all(vec4<bool>(false, true, true || var_0.c, var_0.d))), vec4<bool>(var_0.d, !any(!vec4<bool>(false, var_3.b.x, false, arg_0.x)), arg_0.x, false | (var_3.c <= firstTrailingBit(var_3.c))), vec4<bool>(all(!select(vec2<bool>(var_0.d, var_3.b.x), arg_0, vec2<bool>(true, false))), true, all(select(global2.yyw, select(global2.zxw, vec3<bool>(arg_0.x, true, arg_0.x), var_3.b.x), select(vec3<bool>(var_3.b.x, true, global2.x), global2.xzz, vec3<bool>(false, true, global2.x)))), var_3.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_div_u32(u_input.c, 1u));
    let var_1 = global2.x;
    global1 = u_input.c;
    global1 = firstTrailingBit(~var_0);
    let var_2 = true;
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    global2 = !(!vec4<bool>(true, any(vec4<bool>(global2.x, global2.x, true, true)), any(select(vec2<bool>(true, var_2), vec2<bool>(global2.x, global2.x), false)), false));
    let var_3 = !select(!(!func_1(global2.xx)), vec4<bool>(global2.x && (false || global2.x), global2.x, func_1(select(vec2<bool>(false, false), vec2<bool>(var_2, true), global2.zz)).x, all(vec4<bool>(false, global2.x, true, false)) | var_2), func_3(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, var_0, u_input.c), vec3<u32>(0u, 0u, 117386u), vec3<u32>(var_0, 22942u, 0u)), var_2 | true) < -32213i);
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.c, var_0), _wgslsmith_div_i32(min(_wgslsmith_clamp_i32(u_input.b.x, 1i, -26710i) & u_input.a.x, 2147483647i), 0i));
}

