struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<i32>(8851i, -1i), vec2<i32>(2147483647i, -920i)), Struct_1(vec2<i32>(3158i, -1i), vec2<i32>(35018i, -9774i)), Struct_1(vec2<i32>(-1i, 1i), vec2<i32>(1i, 0i)), Struct_1(vec2<i32>(-14554i, 3942i), vec2<i32>(0i, -31079i)), Struct_1(vec2<i32>(i32(-2147483648), 18456i), vec2<i32>(11409i, 42557i)), Struct_1(vec2<i32>(1i, 23386i), vec2<i32>(i32(-2147483648), 1i)), Struct_1(vec2<i32>(2147483647i, 46848i), vec2<i32>(44822i, -1i)), Struct_1(vec2<i32>(0i, -1i), vec2<i32>(1i, -32661i)), Struct_1(vec2<i32>(2147483647i, -7955i), vec2<i32>(i32(-2147483648), 13725i)), Struct_1(vec2<i32>(-49805i, -19076i), vec2<i32>(2147483647i, -7426i)), Struct_1(vec2<i32>(-29937i, -1004i), vec2<i32>(0i, -45105i)), Struct_1(vec2<i32>(0i, -12850i), vec2<i32>(2147483647i, 46604i)), Struct_1(vec2<i32>(15181i, 56109i), vec2<i32>(-1i, 2147483647i)), Struct_1(vec2<i32>(8060i, 2147483647i), vec2<i32>(-15023i, 1i)), Struct_1(vec2<i32>(9292i, 46999i), vec2<i32>(14125i, 3246i)), Struct_1(vec2<i32>(72022i, 1i), vec2<i32>(14822i, 1i)), Struct_1(vec2<i32>(-48492i, 7319i), vec2<i32>(1i, i32(-2147483648))), Struct_1(vec2<i32>(-29438i, 49604i), vec2<i32>(i32(-2147483648), 1i)), Struct_1(vec2<i32>(1i, 1i), vec2<i32>(i32(-2147483648), 70615i)), Struct_1(vec2<i32>(1i, 0i), vec2<i32>(16461i, 16381i)), Struct_1(vec2<i32>(2147483647i, -27250i), vec2<i32>(1i, 22908i)), Struct_1(vec2<i32>(-21777i, 2147483647i), vec2<i32>(-1i, 23029i)), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-24142i, -35327i)), Struct_1(vec2<i32>(1i, 33177i), vec2<i32>(-79205i, -24471i)), Struct_1(vec2<i32>(1i, -27349i), vec2<i32>(29182i, -64777i)), Struct_1(vec2<i32>(-15830i, -349i), vec2<i32>(1i, 1i)));

var<private> global3: array<vec4<bool>, 31>;

var<private> global4: array<vec3<i32>, 14>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<f32>) -> vec3<i32> {
    var var_0 = global2[_wgslsmith_index_u32(global1.x, 26u)];
    let var_1 = ~select(~vec4<i32>(max(arg_0.x, arg_0.x), _wgslsmith_dot_vec2_i32(var_0.b, vec2<i32>(2147483647i, 1i)), ~(-17999i), -19592i), -_wgslsmith_mod_vec4_i32(vec4<i32>(-59339i, arg_0.x, -37440i, arg_0.x), vec4<i32>(var_0.b.x, -4502i, var_0.b.x, var_0.a.x) << (u_input.c % vec4<u32>(32u))), true);
    var_0 = Struct_1(arg_0, ~_wgslsmith_add_vec2_i32(var_1.yy, -var_1.yz));
    let var_2 = global2[_wgslsmith_index_u32(~1u, 26u)];
    global0 = true;
    return _wgslsmith_mod_vec3_i32(var_1.zxz ^ ((vec3<i32>(-30484i, var_1.x, -4714i) & vec3<i32>(2147483647i, -28931i, arg_0.x)) << (select(~vec3<u32>(arg_1, 114628u, u_input.a.x), ~u_input.c.yxz, vec3<bool>(true, false, true)) % vec3<u32>(32u))), global4[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(global1.x)), 14u)]);
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> vec4<f32> {
    var var_0 = _wgslsmith_mult_vec3_i32(max(func_3(~vec2<i32>(-9754i, arg_1.x), ~62076u, vec2<f32>(-196f, -1466f)) | -(vec3<i32>(arg_1.x, 2147483647i, 0i) | global4[_wgslsmith_index_u32(9511u, 14u)]), _wgslsmith_mod_vec3_i32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(77715u, 42496u, 1u, 35755u), vec4<u32>(arg_0, 64991u, 8692u, arg_0), vec4<u32>(global1.x, arg_0, 0u, arg_0)), _wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(62555u, 1u, u_input.a.x, u_input.d))), 14u)], global4[_wgslsmith_index_u32(global1.x, 14u)])), vec3<i32>(-11201i, -35625i, arg_1.x));
    var_0 = global4[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(77332u, select(1u, min(1u, u_input.a.x), true))), 14u)];
    var var_1 = Struct_2(global2[_wgslsmith_index_u32(~(~9346u >> (~arg_0 % 32u)) << (~4294967295u % 32u), 26u)], vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -419f), _wgslsmith_f_op_f32(min(-692f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1367f))))), 1628f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1160f + 498f))))));
    let var_2 = Struct_2(Struct_1(var_1.a.a ^ -vec2<i32>(var_1.a.b.x, -2147483647i), vec2<i32>(_wgslsmith_mod_i32(~arg_1.x, ~2147483647i), -88753i)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_1.b.x)))) - _wgslsmith_f_op_f32(min(var_1.b.x, var_1.b.x))), 1000f, _wgslsmith_f_op_f32(-602f * 506f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(374f + var_1.b.x))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.b.x, var_1.b.x))))));
    let var_3 = -1000f;
    return vec4<f32>(_wgslsmith_f_op_f32(round(var_1.b.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(641f, 1011f)), _wgslsmith_f_op_f32(439f - 1015f), true & any(vec3<bool>(true, false, true)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_2.b.x, var_3)), _wgslsmith_f_op_f32(ceil(var_1.b.x)))) + var_1.b.x), var_3);
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    global2 = array<Struct_1, 26>();
    global2 = array<Struct_1, 26>();
    let var_0 = -arg_1.b.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1116f) - _wgslsmith_f_op_f32(-1000f - -485f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-590f + 433f) + 1104f) - -833f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -956f) - _wgslsmith_f_op_f32(-1062f - -876f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1553f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-964f - 163f), _wgslsmith_f_op_f32(max(452f, 637f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-545f - 433f) * 2156f))));
    let var_2 = reverseBits(1u);
    return Struct_2(arg_1, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(global1.x, vec4<i32>(arg_1.a.x, arg_1.b.x, arg_1.a.x, 49531i)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1054f, 1000f, 1152f) - vec4<f32>(-1199f, -622f, var_1.x, var_1.x))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(310f, -554f, 1838f, var_1.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1293f, var_1.x, -999f) - vec4<f32>(var_1.x, 326f, var_1.x, var_1.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(64011i, global2[_wgslsmith_index_u32(~u_input.d, 26u)]);
    let var_1 = false;
    global2 = array<Struct_1, 26>();
    var var_2 = func_1(-2147483647i, Struct_1(_wgslsmith_clamp_vec2_i32(~var_0.a.a, var_0.a.a, abs(var_0.a.a)), select(-var_0.a.a, _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.a.a.x, var_0.a.a.x), var_0.a.a, var_0.a.b) >> (~global1.yz % vec2<u32>(32u)), var_1))).a;
    var var_3 = abs(abs(abs(~max(vec2<u32>(u_input.c.x, global1.x), vec2<u32>(global1.x, 14512u)))));
    global2 = array<Struct_1, 26>();
    var var_4 = global4[_wgslsmith_index_u32(62895u, 14u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-928f, var_0.b.x, 2278f) - vec3<f32>(-519f, 970f, var_0.b.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1987f, var_0.b.x, -732f))))))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, var_4.x, 1i, var_0.a.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(-11688i, -35675i, 60610i, var_2.b.x), vec4<i32>(var_0.a.b.x, var_2.a.x, 0i, -12639i))) | _wgslsmith_mult_i32(-2147483647i, var_2.b.x), 24489i), -countOneBits(var_0.a.b.x), var_0.b.x);
}

