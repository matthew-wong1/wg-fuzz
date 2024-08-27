struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-25989i, 1i);

var<private> global1: vec4<f32> = vec4<f32>(1138f, 981f, -1707f, -397f);

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<i32>(i32(-2147483648), -1i)), Struct_1(vec2<i32>(26988i, -1i)), Struct_1(vec2<i32>(2548i, -1i)), Struct_1(vec2<i32>(-1i, 18870i)), Struct_1(vec2<i32>(34640i, 29192i)), Struct_1(vec2<i32>(-43403i, 20001i)), Struct_1(vec2<i32>(3481i, -24088i)), Struct_1(vec2<i32>(i32(-2147483648), 22848i)), Struct_1(vec2<i32>(23529i, 24182i)), Struct_1(vec2<i32>(13300i, -27677i)), Struct_1(vec2<i32>(-1i, -1i)), Struct_1(vec2<i32>(-35557i, 20354i)), Struct_1(vec2<i32>(-11834i, -1104i)), Struct_1(vec2<i32>(2147483647i, 0i)), Struct_1(vec2<i32>(-12097i, 79640i)), Struct_1(vec2<i32>(20620i, i32(-2147483648))), Struct_1(vec2<i32>(1i, 12823i)), Struct_1(vec2<i32>(-97285i, -1i)), Struct_1(vec2<i32>(-27897i, 2147483647i)), Struct_1(vec2<i32>(i32(-2147483648), 1i)), Struct_1(vec2<i32>(2147483647i, -7051i)), Struct_1(vec2<i32>(-1i, i32(-2147483648))), Struct_1(vec2<i32>(-21191i, i32(-2147483648))), Struct_1(vec2<i32>(91867i, -35427i)));

var<private> global3: array<vec3<u32>, 4>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1() -> vec4<f32> {
    let var_0 = Struct_1(-vec2<i32>(global0.x, i32(-1i) * -38619i));
    return vec4<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-1332f + _wgslsmith_f_op_f32(-global1.x)), global1.x);
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    return _wgslsmith_dot_vec4_u32(u_input.e, select(abs(vec4<u32>(~10100u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, u_input.a, u_input.e.x), global3[_wgslsmith_index_u32(1u, 4u)]), 9427u, reverseBits(u_input.a))), vec4<u32>(3237u >> (~u_input.e.x % 32u), abs(4343u), max(30033u, 66604u) >> (countOneBits(83976u) % 32u), 68808u), all(vec3<bool>(all(vec2<bool>(true, true)), true, all(vec2<bool>(true, true))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<i32> {
    global0 = _wgslsmith_mod_vec2_i32(select(countOneBits(_wgslsmith_sub_vec2_i32(-arg_1.a, select(u_input.d, arg_0.a, false))), u_input.d, select(vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(false, false, false))), true)), _wgslsmith_mult_vec2_i32(-u_input.c, vec2<i32>(2147483647i, 9208i)));
    var var_0 = 2147483647i;
    var var_1 = Struct_1(arg_0.a);
    var var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.c >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.a.x, var_1.a.x), vec2<i32>(u_input.d.x, 2147483647i), arg_0.a)), vec2<i32>(~0i, _wgslsmith_mult_i32(arg_0.a.x, 13574i))), (u_input.b.xx ^ arg_1.a) >> (u_input.e.xx % vec2<u32>(32u))), vec2<i32>(reverseBits(var_1.a.x), arg_1.a.x));
    var var_3 = vec3<i32>(~(~arg_0.a.x) & global0.x, -abs(global0.x), -3668i) | (-(~(-u_input.b)) | vec3<i32>(var_1.a.x, -arg_1.a.x, -var_1.a.x));
    return firstLeadingBit(-vec3<i32>(countOneBits(-3712i), _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 27269i), vec2<i32>(var_3.x, 54675i)), _wgslsmith_add_i32(firstTrailingBit(-8951i), global0.x ^ -26266i)));
}

fn func_2() -> Struct_1 {
    global2 = array<Struct_1, 24>();
    global2 = array<Struct_1, 24>();
    let var_0 = Struct_1(_wgslsmith_div_vec2_i32(u_input.b.xz, u_input.b.xy));
    let var_1 = abs(~reverseBits(u_input.b)) | func_4(var_0, global2[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(479f, global1.x, global1.x))), 24u)]);
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1618f, -1581f, 1057f))))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b.xy;
    let var_0 = _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1017f - -290f))) * global1.x));
    let var_1 = u_input.e.wxz;
    global1 = _wgslsmith_f_op_vec4_f32(func_1());
    let var_2 = global2[_wgslsmith_index_u32(u_input.e.x, 24u)];
    var var_3 = func_2();
    var var_4 = Struct_1(~firstLeadingBit(vec2<i32>(22006i, global0.x)) >> (~abs(var_1.yy ^ var_1.zy) % vec2<u32>(32u)));
    global2 = array<Struct_1, 24>();
    var_4 = Struct_1(vec2<i32>(-21096i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(~u_input.b.xx, -u_input.d), max(var_4.a.x, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(485f, var_0), reverseBits(u_input.e.zx));
}

