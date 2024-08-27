struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 21068u;

var<private> global1: array<vec2<i32>, 23>;

var<private> global2: vec4<bool> = vec4<bool>(false, true, false, true);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: i32) -> vec3<u32> {
    var var_0 = Struct_1(~vec4<u32>(~_wgslsmith_div_u32(arg_1, 47474u), arg_0.a.b.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(51642u, 1u, 1u), _wgslsmith_add_u32(73067u, arg_1)), reverseBits(1u)), ~vec3<u32>(3563u, 3332u, 1u), _wgslsmith_div_vec4_i32(min(_wgslsmith_mod_vec4_i32(arg_0.b.c, _wgslsmith_mod_vec4_i32(arg_0.b.c, arg_0.a.c)), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a, u_input.a, arg_0.b.c.x, arg_0.a.c.x), arg_0.a.c)), _wgslsmith_sub_vec4_i32(arg_0.a.c, countOneBits(vec4<i32>(arg_0.b.c.x, u_input.a, u_input.a, arg_2)))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(reverseBits(arg_1), _wgslsmith_div_u32(arg_0.b.b.x, 6271u), arg_1, arg_0.a.d.x), arg_0.a.d, firstLeadingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_1, 4294967295u, 1u, arg_1), arg_0.b.d))));
    var var_1 = ~var_0.d.yyy;
    let var_2 = ~(var_0.c << (vec4<u32>(select(arg_0.c.x, ~arg_1, true), ~arg_0.b.b.x, 4294967295u, firstTrailingBit(_wgslsmith_dot_vec2_u32(arg_0.a.a.yy, vec2<u32>(var_0.d.x, 4294967295u)))) % vec4<u32>(32u)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-352f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-728f + 173f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -421f), _wgslsmith_f_op_f32(f32(-1f) * -267f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -300f), 1045f, false)), 2844f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_4 = ~vec4<i32>(arg_2, -(_wgslsmith_dot_vec3_i32(var_0.c.xyx, vec3<i32>(arg_0.b.c.x, -45348i, 2147483647i)) | u_input.a), var_0.c.x, ~_wgslsmith_sub_i32(var_2.x, arg_0.b.c.x ^ var_2.x));
    return vec3<u32>((1u | _wgslsmith_mult_u32(_wgslsmith_mult_u32(var_1.x, 7097u), _wgslsmith_sub_u32(arg_1, arg_1))) << (102282u % 32u), _wgslsmith_div_u32(_wgslsmith_div_u32(~14441u, var_0.a.x), ~_wgslsmith_div_u32(var_0.b.x, 4294967295u)) >> (6770u % 32u), var_1.x);
}

fn func_2() -> bool {
    let var_0 = ~_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(57006u, 1u, 54212u), vec3<u32>(1u, 0u, 0u)), func_3(Struct_2(Struct_1(vec4<u32>(24623u, 59931u, 1346u, 0u), vec3<u32>(66748u, 0u, 57418u), vec4<i32>(-1i, u_input.a, 48498i, 25264i), vec4<u32>(86099u, 4606u, 34273u, 8749u)), Struct_1(vec4<u32>(48678u, 23294u, 2989u, 1u), vec3<u32>(60824u, 29814u, 36529u), vec4<i32>(23575i, 1i, u_input.a, u_input.a), vec4<u32>(47038u, 3368u, 4294967295u, 4294967295u)), vec2<u32>(4294967295u, 13430u)), 4294967295u, 1i) | vec3<u32>(0u, 19125u, 1u), vec3<u32>(1u, ~0u, ~40333u)), vec3<u32>(_wgslsmith_add_u32(~1u, select(4294967295u, 1u, false)), func_3(Struct_2(Struct_1(vec4<u32>(1u, 4303u, 24083u, 37856u), vec3<u32>(7710u, 56186u, 4294967295u), vec4<i32>(u_input.a, 1i, 1i, u_input.a), vec4<u32>(86798u, 29513u, 30783u, 4294967295u)), Struct_1(vec4<u32>(39282u, 72489u, 4415u, 21496u), vec3<u32>(4294967295u, 40360u, 4294967295u), vec4<i32>(-11303i, u_input.a, -1i, u_input.a), vec4<u32>(0u, 1u, 0u, 12134u)), vec2<u32>(0u, 18690u)), max(4294967295u, 0u), 0i).x, ~firstTrailingBit(51938u)));
    let var_1 = 1u;
    var var_2 = ~_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(0u, var_0.x, var_1)), var_0) & vec3<u32>(var_0.x, ~3948u, var_0.x);
    let var_3 = -global1[_wgslsmith_index_u32(var_2.x, 23u)];
    return global2.x;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    let var_0 = select(select(vec4<bool>(!(global2.x & global2.x), true, -u_input.a <= (1i ^ arg_2.c.x), any(select(vec4<bool>(arg_0, global2.x, false, arg_0), vec4<bool>(arg_0, true, arg_0, arg_0), global2.x))), !(!vec4<bool>(true, arg_0, true, false)), select(select(!vec4<bool>(global2.x, false, global2.x, true), !vec4<bool>(false, arg_0, global2.x, global2.x), select(vec4<bool>(false, arg_0, true, false), vec4<bool>(true, true, arg_0, global2.x), false)), select(vec4<bool>(arg_0, global2.x, global2.x, arg_0), vec4<bool>(global2.x, arg_0, global2.x, arg_0), !vec4<bool>(arg_0, global2.x, global2.x, arg_0)), vec4<bool>(false, !global2.x, true, select(false, arg_0, false)))), vec4<bool>(true, !arg_0, u_input.a == (_wgslsmith_sub_i32(1i, u_input.a) >> (22386u % 32u)), !(!(global2.x & true))), vec4<bool>(true, global2.x, global2.x, global2.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1169f, _wgslsmith_f_op_f32(-2116f + 208f), _wgslsmith_f_op_f32(trunc(-1586f)), _wgslsmith_f_op_f32(-359f - 1043f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1574f, -220f, 1267f, -1312f) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-496f, 1821f, -418f, -1188f)))), var_0)))));
    return Struct_2(Struct_1(~arg_2.d, abs(~_wgslsmith_mult_vec3_u32(vec3<u32>(45225u, arg_1.c.x, arg_1.c.x), arg_1.b.b)), select(vec4<i32>(-26675i, i32(-1i) * -6424i, 2147483647i, ~(-4167i)), _wgslsmith_add_vec4_i32(arg_2.c, vec4<i32>(-1i, arg_1.b.c.x, 53047i, -40210i)), var_0.x), countOneBits(abs(vec4<u32>(arg_1.a.b.x, arg_1.c.x, arg_2.d.x, arg_1.a.a.x)))), arg_2, vec2<u32>(countOneBits(4294967295u >> (arg_1.b.b.x % 32u)), arg_2.a.x) & arg_1.a.a.xz);
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-435f + -383f)))))));
    global1 = array<vec2<i32>, 23>();
    global1 = array<vec2<i32>, 23>();
    var var_1 = _wgslsmith_div_u32(1u, ~(~1u));
    var var_2 = func_4(func_2(), Struct_2(Struct_1(~max(vec4<u32>(29363u, 1u, 4294967295u, 15603u), vec4<u32>(4294967295u, 0u, 33944u, 0u)), ~vec3<u32>(1u, 1u, 1u), vec4<i32>(countOneBits(-38674i), u_input.a, u_input.a ^ -1i, u_input.a), vec4<u32>(1u, 1u, 1u, 1u)), Struct_1(~(~vec4<u32>(1u, 67486u, 45453u, 43382u)), firstLeadingBit(vec3<u32>(1u, 1u, 1u)), abs(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)) & select(vec4<i32>(-2147483647i, 0i, u_input.a, u_input.a), vec4<i32>(-18262i, 32434i, -31673i, 58912i), arg_0.x), max(~vec4<u32>(1u, 1u, 88724u, 61583u), vec4<u32>(1u, 1u, 1u, 1u))), vec2<u32>(4294967295u, 4294967295u)), Struct_1(~(~countOneBits(vec4<u32>(53013u, 32424u, 7673u, 4294967295u))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 1u, 1u), func_3(Struct_2(Struct_1(vec4<u32>(80661u, 1u, 4294967295u, 53896u), vec3<u32>(1u, 1u, 4294967295u), vec4<i32>(2147483647i, -2147483647i, u_input.a, 1i), vec4<u32>(29975u, 23354u, 8402u, 4294967295u)), Struct_1(vec4<u32>(0u, 1u, 1u, 56562u), vec3<u32>(4294967295u, 4585u, 91607u), vec4<i32>(u_input.a, u_input.a, u_input.a, -18021i), vec4<u32>(4025u, 0u, 22056u, 22317u)), vec2<u32>(0u, 4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(456u, 0u, 4294967295u, 0u), vec4<u32>(0u, 21124u, 1u, 1u)), -u_input.a), ~vec3<u32>(5073u, 1u, 23936u)), ~max(~vec4<i32>(u_input.a, -2147483647i, -71468i, u_input.a), min(vec4<i32>(u_input.a, u_input.a, 15705i, 1i), vec4<i32>(2147483647i, u_input.a, u_input.a, -33608i))), vec4<u32>(1u, 1u, 1u, 1u)));
    return Struct_1(~(~_wgslsmith_mult_vec4_u32(max(vec4<u32>(var_2.a.a.x, 57370u, 1u, 61581u), var_2.a.a), func_4(arg_0.x, Struct_2(var_2.a, var_2.a, var_2.c), Struct_1(vec4<u32>(1u, 82250u, var_2.a.d.x, 14866u), vec3<u32>(4294967295u, 49071u, var_2.b.a.x), var_2.b.c, vec4<u32>(4294967295u, 1u, 38008u, 34862u))).a.d)), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_2.a.d.x, var_2.c.x, 1u), ~var_2.a.d.wxx), var_2.b.d.www) >> (var_2.b.a.yxy % vec3<u32>(32u)), -select(_wgslsmith_sub_vec4_i32(vec4<i32>(var_2.b.c.x, u_input.a, u_input.a, 1i), vec4<i32>(var_2.a.c.x, 21346i, 1i, u_input.a)), -_wgslsmith_div_vec4_i32(var_2.a.c, var_2.b.c), !(!vec4<bool>(global2.x, arg_0.x, global2.x, arg_0.x))), func_4(any(select(!vec4<bool>(arg_0.x, false, global2.x, global2.x), select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(false, global2.x, false, global2.x), arg_0.x), select(vec4<bool>(true, true, false, arg_0.x), vec4<bool>(global2.x, true, arg_0.x, false), vec4<bool>(global2.x, arg_0.x, false, false)))), func_4(select(false, true, arg_0.x) | true, Struct_2(func_4(arg_0.x, Struct_2(var_2.a, Struct_1(var_2.a.a, vec3<u32>(118162u, 0u, var_2.a.a.x), var_2.b.c, var_2.a.d), vec2<u32>(1u, var_2.a.d.x)), Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, var_2.a.b.x), var_2.b.d.zxy, var_2.a.c, vec4<u32>(var_2.a.b.x, 4294967295u, var_2.a.b.x, 77399u))).a, func_4(global2.x, Struct_2(Struct_1(vec4<u32>(27145u, 48612u, 0u, 30945u), var_2.b.b, vec4<i32>(var_2.a.c.x, u_input.a, 1i, 8295i), vec4<u32>(var_2.c.x, var_2.a.d.x, 4294967295u, 3752u)), var_2.b, var_2.a.d.xw), Struct_1(var_2.a.d, var_2.b.b, var_2.b.c, vec4<u32>(1u, 4294967295u, var_2.a.b.x, 4294967295u))).a, ~vec2<u32>(var_2.a.b.x, 4294967295u)), Struct_1(_wgslsmith_div_vec4_u32(var_2.a.d, vec4<u32>(var_2.c.x, 17840u, var_2.c.x, var_2.c.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.b.a.x, var_2.a.d.x, 67132u), vec3<u32>(var_2.c.x, var_2.c.x, 15639u), vec3<u32>(2582u, var_2.c.x, 2283u)), var_2.b.c, var_2.a.d & vec4<u32>(var_2.c.x, 1u, var_2.c.x, 34286u))), Struct_1(min(firstLeadingBit(var_2.a.d), vec4<u32>(47994u, 63196u, 4294967295u, var_2.c.x)), _wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, var_2.b.a.x, var_2.a.b.x), var_2.a.a.zyy & vec3<u32>(60160u, 14283u, 76971u)), var_2.b.c, select(vec4<u32>(1u, var_2.c.x, 0u, var_2.c.x), var_2.a.d, !vec4<bool>(true, arg_0.x, true, true)))).a.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 23>();
    var var_0 = func_1(global2.wy);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -201f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1697f, -841f)), _wgslsmith_f_op_f32(sign(369f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(615f - -1524f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-627f, 883f)))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-119f)))))));
    let var_2 = func_4(global2.x, func_4(1i != -(~var_0.c.x), func_4(_wgslsmith_mod_i32(u_input.a, 39959i) >= (i32(-1i) * -1i), Struct_2(func_4(global2.x, Struct_2(Struct_1(vec4<u32>(0u, var_0.d.x, 3731u, 8859u), var_0.a.wzw, vec4<i32>(var_0.c.x, -2147483647i, 0i, 21649i), vec4<u32>(var_0.a.x, var_0.d.x, var_0.a.x, var_0.b.x)), Struct_1(vec4<u32>(var_0.b.x, 0u, 5115u, 4294967295u), var_0.d.xzx, vec4<i32>(-642i, 6722i, 14514i, u_input.a), var_0.a), var_0.d.zx), Struct_1(vec4<u32>(var_0.a.x, 71277u, var_0.b.x, 29938u), vec3<u32>(47150u, var_0.b.x, 0u), vec4<i32>(2956i, -75044i, u_input.a, -16111i), vec4<u32>(var_0.b.x, var_0.a.x, 29397u, 1u))).a, Struct_1(vec4<u32>(19921u, 71284u, 0u, 4294967295u), var_0.a.wxx, vec4<i32>(var_0.c.x, -2147483647i, 40449i, u_input.a), var_0.d), var_0.b.yy), func_1(select(global2.yz, vec2<bool>(global2.x, false), true))), func_1(global2.wy)), func_4(any(!global2.wy), Struct_2(Struct_1(var_0.a, vec3<u32>(var_0.b.x, var_0.d.x, 70165u), func_4(global2.x, Struct_2(Struct_1(var_0.d, var_0.a.xwx, vec4<i32>(-6081i, 8185i, u_input.a, 28213i), vec4<u32>(var_0.d.x, 76691u, 4294967295u, 11343u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, var_0.d.x, var_0.a.x), var_0.a.wyx, var_0.c, var_0.a), vec2<u32>(37188u, 1u)), Struct_1(vec4<u32>(0u, 62655u, 0u, 4424u), var_0.b, vec4<i32>(-1i, -2147483647i, u_input.a, u_input.a), vec4<u32>(39261u, 60986u, var_0.a.x, 4294967295u))).b.c, ~vec4<u32>(23474u, var_0.d.x, var_0.d.x, var_0.d.x)), Struct_1(min(vec4<u32>(var_0.b.x, 24496u, 14084u, var_0.d.x), var_0.a), abs(var_0.d.zxz), abs(vec4<i32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x)), var_0.d), ~var_0.a.zw << (var_0.b.xy % vec2<u32>(32u))), func_1(vec2<bool>(all(vec4<bool>(false, false, false, global2.x)), true))).b);
    var_0 = func_4(global2.x, Struct_2(func_1(select(vec2<bool>(false, global2.x), vec2<bool>(global2.x, global2.x), global2.zx)), var_2.b, max(func_4(global2.x, func_4(false, Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 0u, 1u), vec3<u32>(var_2.a.d.x, var_0.b.x, var_2.a.b.x), vec4<i32>(45502i, -1i, var_2.a.c.x, var_2.b.c.x), var_0.d), var_2.a, var_0.a.wy), var_2.a), var_2.a).b.b.xz, reverseBits(var_0.a.ww & vec2<u32>(var_0.a.x, 46446u)))), func_4(global2.x, Struct_2(Struct_1(var_0.a, vec3<u32>(5645u, var_2.a.a.x, 1u) & var_0.d.xxw, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, var_2.b.c.x, var_2.a.c.x, 2147483647i), vec4<i32>(var_2.a.c.x, -28824i, var_2.b.c.x, -2147483647i)), var_2.a.d << (vec4<u32>(3359u, 34867u, var_2.a.a.x, var_2.a.b.x) % vec4<u32>(32u))), Struct_1(var_2.b.d ^ var_0.d, vec3<u32>(var_2.c.x, var_0.b.x, var_2.c.x), vec4<i32>(0i, var_0.c.x, -31804i, 19003i) & var_2.b.c, max(vec4<u32>(71009u, 4294967295u, var_2.a.d.x, 28647u), var_0.d)), vec2<u32>(~var_2.b.d.x, var_2.c.x)), var_2.a).b).b;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.xx, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_1.zyz * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, var_1.x, 1445f), vec3<f32>(var_1.x, var_1.x, 312f)))), vec3<f32>(_wgslsmith_div_f32(512f, -240f), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x)), false)))), vec2<i32>(-26280i << (0u % 32u), 17267i << (var_2.b.b.x % 32u)) >> (~vec2<u32>(abs(45091u), var_2.b.d.x) % vec2<u32>(32u)), var_1.x);
}

