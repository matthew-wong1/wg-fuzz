struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<f32, 8> = array<f32, 8>(-1426f, 603f, -842f, -1049f, -1000f, 1044f, 1175f, -765f);

var<private> global2: array<Struct_3, 21>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<i32>) -> i32 {
    let var_0 = true;
    global2 = array<Struct_3, 21>();
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(countOneBits(~(u_input.a.x | u_input.a.x)) & _wgslsmith_mod_u32((133181u << (global0.b.x % 32u)) & global0.b.x, u_input.a.x), ~(~select(_wgslsmith_add_u32(30287u, 22461u), min(8684u, global0.b.x), arg_0.x <= arg_0.x))), 21u)];
    global1 = array<f32, 8>();
    global0 = global2[_wgslsmith_index_u32(~global0.b.x, 21u)];
    return _wgslsmith_sub_i32(arg_0.x, -2147483647i);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    var var_0 = arg_1.a.zz;
    let var_1 = vec4<i32>(-_wgslsmith_mod_i32(_wgslsmith_div_i32(abs(50259i), _wgslsmith_mult_i32(41441i, arg_0.a)), arg_2.b.b.x), -1i, arg_2.a, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(0i, arg_1.b.x, 2147483647i, -2147483647i), reverseBits(-vec4<i32>(arg_1.b.x, 2147483647i, 60618i, arg_0.c.b.x))));
    global0 = global2[_wgslsmith_index_u32(min(arg_0.d.x, firstLeadingBit(53716u)), 21u)];
    var var_2 = arg_2.b.b.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(arg_0.d.x, 8u)])) * _wgslsmith_f_op_f32(ceil(global0.a))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(540f, -254f)) + 1210f))));
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>) -> u32 {
    global0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(27467u, 8u)]))))), ~(~(~global0.b)));
    global2 = array<Struct_3, 21>();
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 8u)];
    global2 = array<Struct_3, 21>();
    let var_1 = func_3(Struct_2(func_2(firstTrailingBit(vec4<i32>(arg_1.x, arg_0.b.x, -27717i, -14405i))), arg_0, arg_0, vec4<u32>(46584u, firstTrailingBit(25185u & global0.b.x), global0.b.x, 21297u)), arg_0, Struct_2(firstTrailingBit(arg_0.b.x), arg_0, arg_0, vec4<u32>(70932u, 1u, 88061u, 4294967295u)), arg_0.b.x);
    return _wgslsmith_mult_u32(_wgslsmith_div_u32(var_1.d.x, min(var_1.d.x, global0.b.x)), reverseBits(u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(vec3<u32>(0u, ~func_1(Struct_1(vec4<bool>(false, false, true, true), vec4<i32>(0i, -7274i, -24059i, -2147483647i)), vec3<i32>(-2147483647i, -1i, 39846i)), 31848u) ^ select(~func_3(Struct_2(3283i, Struct_1(vec4<bool>(true, true, false, true), vec4<i32>(-2147483647i, -20512i, -4718i, -1i)), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(-25265i, 1i, -18511i, 11067i)), vec4<u32>(18360u, 0u, 20267u, u_input.b.x)), Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(1i, -1i, -5184i, 10068i)), Struct_2(-6596i, Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(5961i, -46875i, 0i, -1i)), Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(-1i, 0i, 0i, -30713i)), global0.b), 33495i).d.yxy, (vec3<u32>(1u, global0.b.x, u_input.b.x) ^ global0.b.zzw) >> (u_input.a % vec3<u32>(32u)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)));
    var var_1 = func_3(Struct_2(countOneBits(1i), func_3(Struct_2(_wgslsmith_mult_i32(1i, -57534i), Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(1i, -26509i, -27934i, -2147483647i)), func_3(Struct_2(0i, Struct_1(vec4<bool>(false, false, true, true), vec4<i32>(-1i, 55715i, 7674i, -69246i)), Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(-15711i, 1i, -20601i, 2147483647i)), vec4<u32>(0u, u_input.a.x, var_0.x, 17556u)), Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(-2147483647i, 27423i, 1i, -5001i)), Struct_2(2147483647i, Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(41708i, -62641i, 1i, 429i)), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(-34805i, -1i, 2147483647i, 7338i)), global0.b), 0i).c, vec4<u32>(33399u, global0.b.x, u_input.a.x, u_input.a.x) >> (vec4<u32>(var_0.x, 4294967295u, global0.b.x, 47393u) % vec4<u32>(32u))), Struct_1(func_3(Struct_2(31825i, Struct_1(vec4<bool>(false, false, false, false), vec4<i32>(-19997i, -12218i, -17476i, -2147483647i)), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(6266i, -1i, -2147483647i, -28208i)), vec4<u32>(11500u, 23381u, global0.b.x, 0u)), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(-1i, -41542i, -1i, 46032i)), Struct_2(-2147483647i, Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(1i, -31881i, 0i, -2147483647i)), Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(28413i, 18318i, 1i, 2147483647i)), global0.b), 2147483647i).b.a, -vec4<i32>(-1i, 49868i, 1i, 8312i)), func_3(func_3(Struct_2(-2753i, Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(1i, 2147483647i, -2147483647i, -24072i)), Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(1i, 4489i, -1i, -31800i)), global0.b), Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(57923i, -1i, -2147483647i, -1i)), Struct_2(-15455i, Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(-1i, 1i, -40017i, 30135i)), Struct_1(vec4<bool>(false, true, false, false), vec4<i32>(-2147483647i, 32965i, 13793i, 0i)), global0.b), 17923i), Struct_1(vec4<bool>(false, false, false, false), vec4<i32>(33007i, 0i, -1i, -11902i)), func_3(Struct_2(-6607i, Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(1i, 4550i, -12227i, 2147483647i)), Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(-22199i, 31847i, -2147483647i, 22885i)), global0.b), Struct_1(vec4<bool>(false, true, false, false), vec4<i32>(1i, 1i, 1i, 41435i)), Struct_2(8267i, Struct_1(vec4<bool>(true, true, false, true), vec4<i32>(2147483647i, -60556i, -2147483647i, 0i)), Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(-11787i, 1i, 21360i, -34060i)), global0.b), 27435i), -7816i), _wgslsmith_mult_i32(0i, ~1i)).c, Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(1i, -25490i, func_3(Struct_2(2147483647i, Struct_1(vec4<bool>(true, false, false, true), vec4<i32>(1i, -5086i, 69457i, -2147483647i)), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(45841i, 0i, 2147483647i, 46766i)), global0.b), Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(1i, -10442i, 49150i, -22169i)), Struct_2(34677i, Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(-2147483647i, 0i, -2147483647i, -41806i)), Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(-1i, -1i, -17552i, -27154i)), vec4<u32>(0u, u_input.b.x, u_input.b.x, global0.b.x)), -2147483647i).a, min(-2308i, -1i))), firstTrailingBit(min(_wgslsmith_add_vec4_u32(global0.b, vec4<u32>(global0.b.x, u_input.b.x, 48884u, 1u)), vec4<u32>(u_input.b.x, global0.b.x, 0u, var_0.x)))), Struct_1(!(!func_3(Struct_2(-1i, Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(-14747i, 2147483647i, -6549i, 55068i)), Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(-51106i, 0i, -6903i, 0i)), vec4<u32>(20729u, 99516u, 4294967295u, 4294967295u)), Struct_1(vec4<bool>(false, false, true, true), vec4<i32>(56843i, 0i, -1i, 1i)), Struct_2(0i, Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(2147483647i, 0i, 69558i, 6959i)), Struct_1(vec4<bool>(false, false, true, true), vec4<i32>(-64008i, 10269i, 2147483647i, 20415i)), vec4<u32>(var_0.x, var_0.x, 137961u, 4294967295u)), 0i).c.a), ~vec4<i32>(-2147483647i, 2147483647i, -696i, 59119i) & max(_wgslsmith_clamp_vec4_i32(vec4<i32>(7790i, 1885i, 15502i, -14317i), vec4<i32>(14516i, 0i, 2147483647i, -42459i), vec4<i32>(-1i, -1i, 20746i, -36801i)), vec4<i32>(0i, 0i, 728i, -32862i))), Struct_2(-38975i, Struct_1(vec4<bool>(any(vec3<bool>(false, true, true)), false, true, false), -_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 0i, -1i, 0i), vec4<i32>(1i, -27022i, 28992i, -36636i))), func_3(Struct_2(_wgslsmith_mult_i32(0i, 1i), Struct_1(vec4<bool>(false, false, false, false), vec4<i32>(1i, 2147483647i, -1104i, 2147483647i)), Struct_1(vec4<bool>(true, true, false, true), vec4<i32>(-1i, -43800i, 12902i, 13298i)), vec4<u32>(50145u, 4294967295u, 4294967295u, u_input.a.x) | global0.b), func_3(func_3(Struct_2(2147483647i, Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(-1i, 2147483647i, -1i, -10792i)), Struct_1(vec4<bool>(true, true, false, true), vec4<i32>(1i, -8039i, -1i, -64931i)), vec4<u32>(u_input.b.x, 4294967295u, u_input.a.x, 53460u)), Struct_1(vec4<bool>(false, false, false, false), vec4<i32>(13820i, -6099i, 57892i, 1i)), Struct_2(0i, Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(24374i, -1i, -2147483647i, -1i)), Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(-40637i, 1i, 50055i, -1i)), global0.b), -3657i), Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(-34969i, 40648i, -18598i, 2147483647i)), func_3(Struct_2(-30083i, Struct_1(vec4<bool>(false, true, false, false), vec4<i32>(-2147483647i, -35626i, -51941i, 1i)), Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(2147483647i, 0i, 0i, -35485i)), global0.b), Struct_1(vec4<bool>(false, false, true, true), vec4<i32>(54722i, -16195i, -1969i, -1i)), Struct_2(-2576i, Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(-5202i, 2147483647i, 2147483647i, -41350i)), Struct_1(vec4<bool>(false, false, false, false), vec4<i32>(-2147483647i, 1i, -25949i, 2147483647i)), global0.b), -6909i), ~(-1i)).b, Struct_2(min(1i, -59968i), Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(51631i, 2147483647i, -27003i, 68598i)), func_3(Struct_2(2147483647i, Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(-2147483647i, 0i, 6901i, 0i)), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(1i, 24941i, 19865i, 2147483647i)), global0.b), Struct_1(vec4<bool>(false, true, false, false), vec4<i32>(42295i, -2147483647i, 4712i, 0i)), Struct_2(-38735i, Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(-20089i, 9790i, -8804i, -9984i)), Struct_1(vec4<bool>(false, false, false, false), vec4<i32>(9376i, 25313i, -1i, -2147483647i)), vec4<u32>(var_0.x, var_0.x, u_input.a.x, var_0.x)), -1i).c, select(global0.b, global0.b, vec4<bool>(true, true, true, false))), 1i).b, vec4<u32>(func_3(func_3(Struct_2(-1i, Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(0i, 26999i, -1i, -22686i)), Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(-52595i, 1i, 1i, -23528i)), global0.b), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(-2147483647i, 1i, -2147483647i, -8759i)), Struct_2(1i, Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(1i, -1i, -6422i, -4877i)), Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(33238i, -12199i, -2147483647i, -1i)), global0.b), 43518i), Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(-1i, -2147483647i, 1i, 19089i)), func_3(Struct_2(-1i, Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(1i, 1i, 14918i, -4552i)), Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(1i, -6362i, 15863i, 27866i)), vec4<u32>(global0.b.x, var_0.x, u_input.a.x, global0.b.x)), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(5286i, 29663i, 48553i, -62152i)), Struct_2(0i, Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(0i, -1i, -1i, -44449i)), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(2147483647i, -2147483647i, 2147483647i, 61165i)), vec4<u32>(1u, u_input.a.x, var_0.x, 1u)), 0i), -2817i).d.x, abs(0u | var_0.x), 34091u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(25459u, 49945u)), ~vec2<u32>(41412u, 0u)))), -17740i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(52744i, 35869i) << ((32722u & var_1.d.x) % 32u), ~countOneBits(-13531i), firstTrailingBit(-49151i)), ~(46855i ^ _wgslsmith_mult_i32(var_1.a, var_1.b.b.x)), var_1.b.b.x), var_1.b.b, vec4<i32>(~(_wgslsmith_dot_vec4_i32(var_1.c.b, vec4<i32>(var_1.b.b.x, var_1.b.b.x, var_1.c.b.x, var_1.a)) | 2147483647i), var_1.c.b.x, -2147483647i, _wgslsmith_add_i32(var_1.c.b.x, var_1.c.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1519f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1934f - 595f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~36150u, 8u)]), _wgslsmith_f_op_f32(-global0.a))), vec3<u32>(_wgslsmith_mod_u32(~(~u_input.b.x), ~(var_1.d.x >> (var_0.x % 32u))), ~4294967295u, 1u));
}

