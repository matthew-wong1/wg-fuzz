struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec3<bool>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23>;

var<private> global1: array<vec4<i32>, 3>;

var<private> global2: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(Struct_2(vec2<i32>(-10439i, 2147483647i)), true, vec2<u32>(92336u, 50903u)), Struct_4(Struct_2(vec2<i32>(1i, 0i)), true, vec2<u32>(0u, 22499u)), Struct_4(Struct_2(vec2<i32>(-56184i, 42242i)), false, vec2<u32>(52568u, 6234u)), Struct_4(Struct_2(vec2<i32>(i32(-2147483648), 3438i)), true, vec2<u32>(24457u, 24513u)), Struct_4(Struct_2(vec2<i32>(18726i, -168i)), true, vec2<u32>(40811u, 4294967295u)), Struct_4(Struct_2(vec2<i32>(2147483647i, i32(-2147483648))), false, vec2<u32>(4294967295u, 98789u)), Struct_4(Struct_2(vec2<i32>(36132i, 33377i)), false, vec2<u32>(3029u, 17241u)), Struct_4(Struct_2(vec2<i32>(-1i, -1i)), true, vec2<u32>(16070u, 4294967295u)));

var<private> global3: f32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>) -> i32 {
    let var_0 = Struct_2(~(~(-vec2<i32>(arg_1.e.x, -43727i)) | _wgslsmith_mult_vec2_i32(arg_1.e.zz, ~arg_1.e.zz)));
    let var_1 = arg_1.e.x;
    return 1111i << (~arg_1.d.x % 32u);
}

fn func_1() -> i32 {
    return min(abs(min(-_wgslsmith_clamp_i32(-45015i, 19362i, -25031i), _wgslsmith_div_i32(35265i, func_2(-2142f, Struct_1(7331i, vec4<u32>(1u, 3015u, 141289u, u_input.a.x), vec3<bool>(false, false, true), u_input.a, vec3<i32>(-36815i, -9690i, 2147483647i)), vec3<bool>(false, true, false))))), 26257i);
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_3) -> u32 {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(1f))))));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(118f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(997f * 465f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -761f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-444f, 1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-210f + -1434f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1000f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))));
    global0 = array<u32, 23>();
    return global0[_wgslsmith_index_u32(1u, 23u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(u_input.a.x, reverseBits(0u), _wgslsmith_div_u32(1u, func_3(max(u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a)), ~func_1(), Struct_3(all(vec3<bool>(true, true, true)), min(vec4<i32>(1i, 82307i, 26801i, -1i), vec4<i32>(29076i, 0i, 1i, -1i)), abs(-2147483647i)))), _wgslsmith_sub_u32(~(~u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, u_input.a.x) | vec4<u32>(7407u, global0[_wgslsmith_index_u32(58104u, 23u)], 6317u, 4190u), ~vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 23u)], 23u)], global0[_wgslsmith_index_u32(43293u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)]))) >> (1u % 32u));
    let var_1 = _wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(firstLeadingBit(35992u), 23u)], global0[_wgslsmith_index_u32(28909u, 23u)] & 9503u)), vec3<u32>(u_input.a.x, _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(18870u, 23u)] >> (13320u % 32u), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(0u, 23u)], 23u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20296u, 23u)] << (u_input.a.x % 32u), 23u)]) >> (countOneBits(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(4294967295u, 23u)], u_input.a.x)) % 32u), ~reverseBits(~global0[_wgslsmith_index_u32(u_input.a.x, 23u)])));
    var var_2 = select(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(-min(vec3<i32>(-1i, 51511i, 0i), vec3<i32>(1487i, 20114i, 6026i)), -vec3<i32>(-2147483647i, 23274i, 22735i) << ((vec3<u32>(var_1, 2958u, u_input.a.x) >> (u_input.a % vec3<u32>(32u))) % vec3<u32>(32u))), ~(max(vec3<i32>(-1093i, 63542i, 2147483647i), vec3<i32>(-1i, 2147483647i, -16790i)) ^ firstTrailingBit(vec3<i32>(2147483647i, -4572i, 2147483647i)))), firstTrailingBit(vec3<i32>(~1i, i32(-1i) * -1i, -16908i)), vec3<bool>(any(vec4<bool>(true, true, true, true)) || (u_input.a.x <= ~28314u), any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))) && true, false));
    global3 = 547f;
    let var_3 = var_2.x;
    global2 = array<Struct_4, 8>();
    let var_4 = vec2<u32>(_wgslsmith_dot_vec2_u32(var_0.wz, u_input.a.yy << (vec2<u32>(53266u, 0u) % vec2<u32>(32u))) & firstLeadingBit(4294967295u), reverseBits(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(u_input.a.x), 23u)], 23u)], 23u)]) ^ global0[_wgslsmith_index_u32(reverseBits(u_input.a.x), 23u)]);
    var var_5 = vec3<i32>(var_2.x, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(var_2.x, var_2.x), vec2<i32>(var_2.x, _wgslsmith_sub_i32(var_2.x | 52148i, -var_2.x))));
    var var_6 = !(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), vec3<bool>(false, false, true), vec3<bool>(any(vec4<bool>(true, false, true, false)), true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(min(vec2<i32>(2147483647i, var_2.x), var_2.yy) | vec2<i32>(2147483647i, 2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -849f))), _wgslsmith_f_op_f32(ceil(-753f))))), 28151u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-497f + -428f), _wgslsmith_f_op_f32(select(1000f, -818f, true)), true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1504f * 551f) + -1986f))), _wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 23u)], var_0.x, u_input.a.x, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, _wgslsmith_dot_vec2_u32(u_input.a.zx, var_4), _wgslsmith_dot_vec2_u32(vec2<u32>(67255u, global0[_wgslsmith_index_u32(4294967295u, 23u)]), vec2<u32>(65865u, var_4.x)), 107273u), ~(vec4<u32>(35751u, var_0.x, 4294967295u, global0[_wgslsmith_index_u32(var_0.x, 23u)]) >> (vec4<u32>(1u, var_0.x, var_4.x, 4294967295u) % vec4<u32>(32u))), min(vec4<u32>(var_4.x, 52345u, var_1, 213u), ~vec4<u32>(var_1, 0u, 1u, var_4.x)))));
}

