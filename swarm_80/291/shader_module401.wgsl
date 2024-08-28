struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(-1000f, vec2<f32>(-264f, 1000f), 21792u, 4294967295u), Struct_1(932f, vec2<f32>(-1000f, -227f), 1u, 4294967295u), Struct_1(-185f, vec2<f32>(-956f, 1000f), 0u, 1u), Struct_1(451f, vec2<f32>(1256f, 1281f), 0u, 47572u), Struct_1(346f, vec2<f32>(-669f, -368f), 4294967295u, 1u), Struct_1(-1000f, vec2<f32>(-1903f, -177f), 1u, 34751u), Struct_1(296f, vec2<f32>(-1671f, -191f), 13669u, 0u));

var<private> global2: vec2<u32> = vec2<u32>(2714u, 22430u);

var<private> global3: array<u32, 25> = array<u32, 25>(17034u, 4294967295u, 1u, 0u, 0u, 56064u, 4294967295u, 14756u, 1u, 1u, 4294967295u, 1u, 40007u, 33905u, 26724u, 1u, 107532u, 0u, 4294967295u, 25773u, 39587u, 17687u, 4294967295u, 0u, 17852u);

var<private> global4: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_5) -> vec2<bool> {
    var var_0 = Struct_3(-vec3<i32>(reverseBits(-4035i), arg_1.a.x, -arg_1.a.x), arg_1.b, global4.x);
    var var_1 = -885f;
    var var_2 = arg_1;
    let var_3 = ~1u < ~global3[_wgslsmith_index_u32(var_2.b.c | firstLeadingBit(~var_2.b.d), 25u)];
    global2 = ~vec2<u32>(72853u, 4294967295u);
    return vec2<bool>(true, true);
}

fn func_1(arg_0: Struct_5, arg_1: Struct_4) -> vec2<u32> {
    let var_0 = !vec3<bool>(any(select(select(vec2<bool>(global4.x, arg_1.a.c), vec2<bool>(false, global4.x), vec2<bool>(true, true)), func_2(Struct_2(Struct_1(arg_1.a.b.a, vec2<f32>(821f, -876f), global3[_wgslsmith_index_u32(153262u, 25u)], global3[_wgslsmith_index_u32(1u, 25u)]), vec4<u32>(global3[_wgslsmith_index_u32(arg_1.a.b.d, 25u)], u_input.a, 92618u, 0u)), Struct_3(vec3<i32>(arg_1.a.a.x, arg_1.a.a.x, -1i), Struct_1(671f, arg_1.a.b.b, u_input.a, 20039u), global4.x), arg_0), vec2<bool>(global4.x, true))), false, global4.x);
    let var_1 = -vec2<i32>(16063i, arg_0.b);
    global3 = array<u32, 25>();
    var var_2 = arg_1.a.b.b.x;
    global3 = array<u32, 25>();
    return vec2<u32>(global2.x, ~global2.x);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: bool) -> vec2<u32> {
    global1 = array<Struct_1, 7>();
    global1 = array<Struct_1, 7>();
    var var_0 = !func_2(Struct_2(Struct_1(1948f, _wgslsmith_div_vec2_f32(arg_1.a.b, vec2<f32>(1114f, -717f)), 1u, ~20716u), vec4<u32>(reverseBits(global3[_wgslsmith_index_u32(4294967295u, 25u)]), _wgslsmith_mult_u32(1u, 1u), arg_0.a.b.d, arg_0.a.b.c)), Struct_3(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a.a.x, arg_0.a.a.x, 21788i), arg_0.a.a)), Struct_1(_wgslsmith_f_op_f32(-1287f - 587f), vec2<f32>(arg_1.a.b.x, arg_0.a.b.a), 1u, func_1(Struct_5(vec2<i32>(arg_0.a.a.x, arg_0.a.a.x), 38602i), Struct_4(Struct_3(vec3<i32>(arg_0.a.a.x, arg_0.a.a.x, -23109i), arg_0.a.b, false))).x), !(!arg_2)), Struct_5(_wgslsmith_add_vec2_i32(firstTrailingBit(arg_0.a.a.xy), -arg_0.a.a.zy), firstTrailingBit(-1i << (0u % 32u))));
    var var_1 = ~global3[_wgslsmith_index_u32(1u, 25u)];
    global1 = array<Struct_1, 7>();
    return countOneBits(arg_1.b.yy);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 7>();
    let var_0 = 0u;
    global0 = 0i;
    global2 = ~(~(countOneBits(func_1(Struct_5(vec2<i32>(11460i, 5421i), -1i), Struct_4(Struct_3(vec3<i32>(48072i, 0i, 24040i), Struct_1(-613f, vec2<f32>(895f, 470f), 48085u, var_0), false)))) >> ((func_3(Struct_4(Struct_3(vec3<i32>(1i, 2147483647i, 31428i), Struct_1(1559f, vec2<f32>(115f, 460f), global2.x, var_0), global4.x)), Struct_2(Struct_1(-196f, vec2<f32>(-604f, -640f), 0u, 0u), vec4<u32>(u_input.a, global3[_wgslsmith_index_u32(4294967295u, 25u)], global3[_wgslsmith_index_u32(42296u, 25u)], global2.x)), global4.x) >> (~vec2<u32>(u_input.a, global2.x) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var var_1 = Struct_3(vec3<i32>(1i, ~(-24097i), 22970i), Struct_1(-771f, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(752f - -628f), _wgslsmith_f_op_f32(floor(557f))), _wgslsmith_f_op_f32(ceil(-412f))), 0u, _wgslsmith_mod_u32(40438u, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~29024u, 25u)], 25u)])), true);
    var_1 = Struct_3(vec3<i32>(-22595i, 0i << (var_1.b.d % 32u), -15350i), Struct_1(var_1.b.a, _wgslsmith_f_op_vec2_f32(var_1.b.b * _wgslsmith_f_op_vec2_f32(-var_1.b.b)), 33991u, global2.x << (~_wgslsmith_div_u32(11845u, 80650u) % 32u)), any(vec3<bool>(!global4.x, global4.x, true || !var_1.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(509f))), _wgslsmith_f_op_f32(-var_1.b.b.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1837f, var_1.b.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.b.x))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(min(184f, var_1.b.a)), 796f, 1752f, -303f))))), ~(vec4<u32>(1u, ~36945u, global2.x << (global2.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(var_0, 25u)], 4294967295u), vec2<u32>(var_0, u_input.a))) >> (min(vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 25u)], 0u, 1u, global3[_wgslsmith_index_u32(1u, 25u)]), min(vec4<u32>(1u, 35500u, u_input.a, 0u), vec4<u32>(135461u, 9408u, var_0, var_0))) % vec4<u32>(32u))), 351f, var_1.b.b);
}

