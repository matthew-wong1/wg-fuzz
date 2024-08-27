struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

var<private> global2: array<u32, 18> = array<u32, 18>(1u, 4294967295u, 1u, 0u, 4294967295u, 4294967295u, 4294967295u, 66642u, 0u, 27090u, 4294967295u, 73018u, 1u, 1u, 22940u, 7615u, 36853u, 36696u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_3(countOneBits(~(~abs(vec3<u32>(global2[_wgslsmith_index_u32(u_input.c, 18u)], 0u, u_input.b)))), select(vec2<u32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.e.wyy, vec3<u32>(global2[_wgslsmith_index_u32(7018u, 18u)], 83828u, u_input.e.x)) << (_wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 18u)], 18u)], 1u) % 32u), 18u)], ~18760u), vec2<u32>(~(~4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(57141u, u_input.c, 4294967295u, u_input.b), vec4<u32>(u_input.b, u_input.c, u_input.b, global2[_wgslsmith_index_u32(u_input.c, 18u)])) & max(26292u, global2[_wgslsmith_index_u32(22536u, 18u)])), select(select(select(global1.xz, vec2<bool>(global1.x, false), true), select(global1.zy, vec2<bool>(global0[_wgslsmith_index_u32(1u, 28u)], global1.x), global1.x), vec2<bool>(true, true)), vec2<bool>(global1.x, true), !global0[_wgslsmith_index_u32(4294967295u, 28u)])));
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a & max(11782i, 1i), 1064i), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.a, 2147483647i), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 17110i, -18916i), vec3<i32>(17999i, u_input.a, -1i)))) >> (u_input.e.xyy % vec3<u32>(32u)));
    let var_2 = global1.xz;
    global1 = select(vec3<bool>(false, !((i32(-1i) * -2147483647i) > firstLeadingBit(u_input.d)), any(vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.b.x, 28u)], any(vec3<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 28u)], global0[_wgslsmith_index_u32(29948u, 28u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 18u)], 28u)]))))), vec3<bool>(all(global1.zx), any(!select(vec2<bool>(false, global1.x), global1.zy, vec2<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 28u)], var_2.x))), -_wgslsmith_mult_i32(u_input.a, u_input.a) == -40937i), false);
    global2 = array<u32, 18>();
    return select(vec3<bool>(var_2.x, false, false), !select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 28u)], false), !vec3<bool>(global1.x, var_2.x, false), all(vec2<bool>(true, false))), !vec3<bool>(var_2.x, global1.x, global1.x), true), all(select(select(!vec4<bool>(false, true, global1.x, true), select(vec4<bool>(global1.x, true, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 18u)], 28u)], global1.x), vec4<bool>(false, true, true, var_2.x), vec4<bool>(var_2.x, global0[_wgslsmith_index_u32(23424u, 28u)], global1.x, var_2.x)), global0[_wgslsmith_index_u32(~24615u, 28u)]), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(10353u, 28u)], global1.x), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 28u)], var_2.x, var_2.x, true), all(global1.yz)), false)));
}

fn func_2() -> vec2<bool> {
    let var_0 = countOneBits(countOneBits(vec4<i32>(-66841i, u_input.a, -max(0i, 0i), u_input.a)));
    global2 = array<u32, 18>();
    let var_1 = all(global1.yz);
    global1 = select(select(select(vec3<bool>(true, true, global1.x), vec3<bool>(var_1, true, global0[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(u_input.e.x, 18u)], 28u)]), any(vec4<bool>(true, global1.x, true, true)) && (u_input.c <= u_input.e.x)), vec3<bool>(var_0.x == _wgslsmith_mod_i32(0i, -1i), true, false), func_3()), vec3<bool>(true, true, true), vec3<bool>(var_1, global1.x, true));
    var var_2 = Struct_3(~u_input.e.xxx, select(~_wgslsmith_clamp_vec2_u32(u_input.e.wz, vec2<u32>(global2[_wgslsmith_index_u32(0u, 18u)], global2[_wgslsmith_index_u32(5307u, 18u)]), min(u_input.e.yy, vec2<u32>(3047u, global2[_wgslsmith_index_u32(0u, 18u)]))), u_input.e.yz, vec2<bool>(true, any(select(vec3<bool>(var_1, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, global1.x))))));
    return !global1.xz;
}

fn func_1(arg_0: vec2<f32>) -> vec2<i32> {
    global0 = array<bool, 28>();
    global2 = array<u32, 18>();
    let var_0 = !func_2();
    global2 = array<u32, 18>();
    global1 = select(vec3<bool>(func_3().x, all(var_0), any(!(!vec2<bool>(false, var_0.x)))), !select(!(!vec3<bool>(var_0.x, global0[_wgslsmith_index_u32(1u, 28u)], global1.x)), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(u_input.e.x, 28u)], var_0.x), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 28u)], true, global0[_wgslsmith_index_u32(0u, 28u)])), global1.x);
    return vec2<i32>(_wgslsmith_dot_vec3_i32(reverseBits(~vec3<i32>(-2147483647i, -49375i, u_input.d)), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-7336i, u_input.d, -42348i), vec3<i32>(2147483647i, u_input.d, 1i)))), 0i) >> (firstLeadingBit(~u_input.e.yy & min(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 18u)], 18u)], global2[_wgslsmith_index_u32(26726u, 18u)]), min(u_input.e.zz, u_input.e.zz))) % vec2<u32>(32u));
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_3, arg_3: f32) -> Struct_2 {
    var var_0 = reverseBits(reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, arg_0.x, u_input.a), vec3<i32>(-1i, u_input.d, u_input.d)))) | vec3<i32>(reverseBits(-19356i), _wgslsmith_add_i32(arg_0.x, u_input.d), countOneBits(~3997i));
    let var_1 = u_input.e.wz;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_3))) * _wgslsmith_f_op_f32(select(arg_3, _wgslsmith_div_f32(arg_3, 262f), false)));
    var var_3 = -arg_0.x;
    let var_4 = _wgslsmith_f_op_f32(ceil(arg_3));
    return Struct_2(arg_2.a << ((u_input.e.wyz & u_input.e.zyx) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1069f, -489f))) ^ vec2<i32>(-2147483647i, firstTrailingBit(select(u_input.d, u_input.a, false))), 28928u, Struct_3(min(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.e.x, u_input.b, u_input.e.x), u_input.e.zyw), min(u_input.e.ywz & vec3<u32>(1u, u_input.e.x, 74773u), u_input.e.xxx)), vec2<u32>(global2[_wgslsmith_index_u32(abs(1u), 18u)], u_input.c)), _wgslsmith_f_op_f32(685f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(578f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1255f)))))));
    var_0 = Struct_2(countOneBits(vec3<u32>(countOneBits(28879u), ~(~45132u), min(16549u, 16385u))));
    var var_1 = func_2();
    var_0 = Struct_2(firstTrailingBit(u_input.e.yyy));
    var_0 = Struct_2(vec3<u32>(~4294967295u, 1u, select(global2[_wgslsmith_index_u32(firstTrailingBit(5205u), 18u)], _wgslsmith_mod_u32(1u, 4294967295u), true)) | u_input.e.zwz);
    let var_2 = func_4((vec2<i32>(-1i) * -firstTrailingBit(vec2<i32>(u_input.d, 1i))) >> ((abs(~var_0.a.zz) << (vec2<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~u_input.e.x, 18u)], 18u)]) % vec2<u32>(32u))) % vec2<u32>(32u)), var_0.a.x, Struct_3(vec3<u32>(4294967295u, ~0u, var_0.a.x), var_0.a.yy & _wgslsmith_sub_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 18u)], var_0.a.x), vec2<u32>(var_0.a.x, 4294967295u))), _wgslsmith_f_op_f32(-1f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-151f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-817f, _wgslsmith_f_op_f32(-824f - 851f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1089f * 675f), _wgslsmith_f_op_f32(f32(-1f) * -503f)))), 4294967295u, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -487f) * 828f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(234f))), 1000f, -158f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-472f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1265f), _wgslsmith_div_f32(321f, 1320f)))), 4294967295u);
}

