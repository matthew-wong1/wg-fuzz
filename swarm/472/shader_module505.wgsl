struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: bool,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(false, vec4<u32>(26585u, 31765u, 4294967295u, 24039u), true, vec3<bool>(true, false, false), -1945f), vec3<bool>(false, false, true), Struct_1(false, vec4<u32>(1994u, 89883u, 4294967295u, 1697u), false, vec3<bool>(true, true, true), 593f), Struct_1(false, vec4<u32>(26028u, 14123u, 0u, 13200u), true, vec3<bool>(true, true, true), -294f), vec2<bool>(false, true)), Struct_2(Struct_1(false, vec4<u32>(29318u, 4294967295u, 101036u, 3638u), true, vec3<bool>(false, true, true), 1038f), vec3<bool>(true, true, false), Struct_1(false, vec4<u32>(1u, 29725u, 1u, 0u), true, vec3<bool>(false, false, true), 2002f), Struct_1(true, vec4<u32>(4294967295u, 10118u, 4294967295u, 3080u), false, vec3<bool>(false, true, true), -117f), vec2<bool>(true, false)), Struct_2(Struct_1(true, vec4<u32>(0u, 1u, 0u, 4294967295u), true, vec3<bool>(false, true, true), 554f), vec3<bool>(false, false, false), Struct_1(false, vec4<u32>(27626u, 34477u, 106791u, 0u), true, vec3<bool>(false, true, false), -460f), Struct_1(true, vec4<u32>(1u, 3656u, 2672u, 8898u), true, vec3<bool>(false, false, true), -1576f), vec2<bool>(true, false)), Struct_2(Struct_1(true, vec4<u32>(1u, 4294967295u, 0u, 1u), false, vec3<bool>(true, true, true), -465f), vec3<bool>(true, false, true), Struct_1(true, vec4<u32>(1837u, 4294967295u, 4294967295u, 0u), false, vec3<bool>(true, false, false), 1767f), Struct_1(false, vec4<u32>(94039u, 99234u, 82122u, 20916u), false, vec3<bool>(false, false, false), 1512f), vec2<bool>(false, true)), Struct_2(Struct_1(false, vec4<u32>(93493u, 47912u, 15783u, 49588u), false, vec3<bool>(false, true, false), -467f), vec3<bool>(false, true, true), Struct_1(false, vec4<u32>(2431u, 20418u, 1u, 21378u), true, vec3<bool>(false, true, false), 333f), Struct_1(false, vec4<u32>(5443u, 41594u, 4294967295u, 0u), true, vec3<bool>(false, true, false), -601f), vec2<bool>(true, true)), Struct_2(Struct_1(false, vec4<u32>(0u, 1u, 4294967295u, 4294967295u), true, vec3<bool>(false, false, false), -703f), vec3<bool>(false, true, true), Struct_1(true, vec4<u32>(70925u, 77184u, 103741u, 7323u), false, vec3<bool>(false, true, false), -2782f), Struct_1(true, vec4<u32>(4294967295u, 31390u, 0u, 4294967295u), true, vec3<bool>(false, true, true), 1388f), vec2<bool>(false, true)), Struct_2(Struct_1(false, vec4<u32>(1u, 72351u, 0u, 18991u), false, vec3<bool>(false, false, false), 807f), vec3<bool>(true, false, false), Struct_1(false, vec4<u32>(35737u, 4294967295u, 4294967295u, 1u), false, vec3<bool>(false, false, false), -357f), Struct_1(true, vec4<u32>(13442u, 1u, 29316u, 92226u), true, vec3<bool>(false, false, false), 272f), vec2<bool>(false, true)), Struct_2(Struct_1(true, vec4<u32>(4294967295u, 4294967295u, 32060u, 4294967295u), true, vec3<bool>(false, false, false), -1000f), vec3<bool>(false, false, true), Struct_1(true, vec4<u32>(34523u, 4294967295u, 4294967295u, 2394u), false, vec3<bool>(true, false, true), -902f), Struct_1(false, vec4<u32>(4294967295u, 68368u, 4294967295u, 1u), true, vec3<bool>(false, false, false), 2626f), vec2<bool>(true, true)), Struct_2(Struct_1(true, vec4<u32>(1u, 1u, 0u, 78580u), true, vec3<bool>(false, false, true), 306f), vec3<bool>(false, true, true), Struct_1(false, vec4<u32>(80697u, 4294967295u, 88714u, 4294967295u), true, vec3<bool>(false, false, false), -1000f), Struct_1(false, vec4<u32>(0u, 0u, 16440u, 0u), true, vec3<bool>(true, true, true), 1000f), vec2<bool>(false, false)), Struct_2(Struct_1(false, vec4<u32>(1u, 21246u, 4294967295u, 32004u), false, vec3<bool>(true, false, false), 1721f), vec3<bool>(false, true, false), Struct_1(true, vec4<u32>(28137u, 4294967295u, 86590u, 4294967295u), false, vec3<bool>(false, false, false), 494f), Struct_1(true, vec4<u32>(63320u, 1u, 0u, 32328u), false, vec3<bool>(true, false, false), -826f), vec2<bool>(false, true)), Struct_2(Struct_1(true, vec4<u32>(56766u, 42236u, 4294967295u, 20494u), false, vec3<bool>(true, false, false), 1525f), vec3<bool>(true, false, true), Struct_1(false, vec4<u32>(69872u, 21196u, 1u, 15545u), true, vec3<bool>(true, false, false), 326f), Struct_1(true, vec4<u32>(41153u, 4846u, 68636u, 0u), false, vec3<bool>(false, false, false), -923f), vec2<bool>(false, false)), Struct_2(Struct_1(false, vec4<u32>(1u, 24813u, 27757u, 0u), true, vec3<bool>(true, true, false), 418f), vec3<bool>(false, true, true), Struct_1(false, vec4<u32>(55333u, 26271u, 0u, 4294967295u), true, vec3<bool>(false, true, true), -1068f), Struct_1(true, vec4<u32>(1u, 4294967295u, 1u, 1u), false, vec3<bool>(false, false, false), -109f), vec2<bool>(true, false)), Struct_2(Struct_1(true, vec4<u32>(39704u, 0u, 0u, 4294967295u), false, vec3<bool>(false, false, false), 428f), vec3<bool>(true, false, false), Struct_1(false, vec4<u32>(57942u, 0u, 0u, 4294967295u), true, vec3<bool>(true, false, false), 157f), Struct_1(true, vec4<u32>(4294967295u, 4294967295u, 0u, 36016u), false, vec3<bool>(false, false, true), 1882f), vec2<bool>(true, true)), Struct_2(Struct_1(true, vec4<u32>(14908u, 65856u, 35682u, 4294967295u), true, vec3<bool>(false, false, false), 625f), vec3<bool>(false, false, false), Struct_1(false, vec4<u32>(1u, 4294967295u, 103583u, 111090u), false, vec3<bool>(true, false, false), 1162f), Struct_1(true, vec4<u32>(11534u, 0u, 38022u, 0u), false, vec3<bool>(false, true, true), 244f), vec2<bool>(true, false)), Struct_2(Struct_1(false, vec4<u32>(1301u, 81643u, 0u, 22205u), true, vec3<bool>(true, true, true), 236f), vec3<bool>(true, false, true), Struct_1(false, vec4<u32>(87595u, 21085u, 81201u, 1u), true, vec3<bool>(true, true, true), 407f), Struct_1(true, vec4<u32>(28819u, 4294967295u, 0u, 1u), false, vec3<bool>(false, true, false), 500f), vec2<bool>(false, false)), Struct_2(Struct_1(true, vec4<u32>(83735u, 0u, 1u, 60114u), true, vec3<bool>(true, false, false), 322f), vec3<bool>(false, false, true), Struct_1(true, vec4<u32>(111585u, 1u, 15332u, 23355u), true, vec3<bool>(true, false, false), 1086f), Struct_1(false, vec4<u32>(9720u, 0u, 1u, 27735u), true, vec3<bool>(true, false, false), 2664f), vec2<bool>(true, true)), Struct_2(Struct_1(true, vec4<u32>(0u, 1u, 35142u, 0u), false, vec3<bool>(true, false, true), 791f), vec3<bool>(false, false, true), Struct_1(false, vec4<u32>(26036u, 3287u, 4294967295u, 0u), true, vec3<bool>(false, true, true), -472f), Struct_1(true, vec4<u32>(0u, 4294967295u, 0u, 0u), false, vec3<bool>(true, false, false), 762f), vec2<bool>(true, true)), Struct_2(Struct_1(true, vec4<u32>(4294967295u, 12052u, 5962u, 39875u), false, vec3<bool>(true, false, false), -409f), vec3<bool>(true, false, false), Struct_1(false, vec4<u32>(42180u, 4294967295u, 5277u, 97242u), true, vec3<bool>(false, false, false), -375f), Struct_1(true, vec4<u32>(21376u, 8954u, 4294967295u, 1u), false, vec3<bool>(true, false, false), 248f), vec2<bool>(false, false)));

var<private> global2: Struct_1 = Struct_1(false, vec4<u32>(1u, 72621u, 4999u, 1u), true, vec3<bool>(true, true, false), -1000f);

var<private> global3: array<Struct_2, 12>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = true;
    var var_1 = max(-_wgslsmith_dot_vec3_i32(abs(u_input.d << (vec3<u32>(global2.b.x, global2.b.x, 1u) % vec3<u32>(32u))), min(vec3<i32>(u_input.b, u_input.d.x, u_input.b), reverseBits(u_input.d))), ~_wgslsmith_mod_i32(select(u_input.d.x, ~u_input.b, !global2.c), ~1i));
    let var_2 = _wgslsmith_f_op_f32(trunc(-329f)) >= global0.e;
    global3 = array<Struct_2, 12>();
    let var_3 = vec4<u32>(~(~(~(39698u | u_input.c))), ~(~(u_input.e & abs(global2.b.x))), ~countOneBits(~global2.b.x), abs(_wgslsmith_mod_u32(~34784u, 4294967295u)));
    return !(!global0.d.x);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: bool) -> bool {
    global1 = array<Struct_2, 18>();
    global3 = array<Struct_2, 12>();
    global2 = Struct_1(false, vec4<u32>(_wgslsmith_dot_vec3_u32(global2.b.zxx, select(min(global0.b.ywz, vec3<u32>(u_input.c, u_input.e, 4294967295u)), vec3<u32>(global2.b.x, 7001u, 0u), vec3<bool>(arg_2, global2.a, true))), global0.b.x, abs(global0.b.x), 0u), all(global2.d.yy), !vec3<bool>(_wgslsmith_f_op_f32(floor(arg_0.x)) == _wgslsmith_f_op_f32(f32(-1f) * -177f), false, false), -1486f);
    var var_0 = Struct_2(Struct_1(!select(false, func_3(), select(global2.a, arg_2, true)), _wgslsmith_clamp_vec4_u32(vec4<u32>(~global2.b.x, min(global0.b.x, global2.b.x), ~4294967295u, abs(36599u)), _wgslsmith_add_vec4_u32(global0.b, global0.b), vec4<u32>(7413u, u_input.e, 1u, global0.b.x) << (~vec4<u32>(4294967295u, u_input.c, 81865u, 1u) % vec4<u32>(32u))), !func_3() != true, !global2.d, -1000f), global2.d, Struct_1(false, ~global2.b, u_input.a < (i32(-1i) * -26522i), !(!vec3<bool>(arg_2, true, arg_2)), global2.e), Struct_1(global0.c, ~vec4<u32>(40361u, ~53766u, firstTrailingBit(global0.b.x), firstTrailingBit(40847u)), true, global2.d, _wgslsmith_f_op_f32(exp2(arg_0.x))), vec2<bool>(true, any(select(global2.d, global2.d, global2.c))));
    let var_1 = select(vec2<bool>(true, global0.c), !global0.d.xy, global2.d.x & var_0.e.x);
    return arg_2;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_1(!(!global0.d.x), abs(~min(global0.b, abs(global0.b))), 1666f > _wgslsmith_f_op_f32(-global2.e), select(select(global2.d, !vec3<bool>(false, global0.c, false), true), vec3<bool>(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e, 653f, 673f, 611f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1147f, 1039f, -442f), vec3<f32>(global2.e, -1704f, 1757f))), -431f >= global0.e), global2.c, !all(vec2<bool>(false, arg_0))), vec3<bool>(global2.c || (arg_0 | arg_0), true & global0.a, false)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.e - -422f))));
    global1 = array<Struct_2, 18>();
    let var_1 = reverseBits(~(~(~global0.b.xwx) >> (var_0.b.wyy % vec3<u32>(32u))));
    let var_2 = global1[_wgslsmith_index_u32(var_1.x, 18u)];
    var var_3 = true;
    return Struct_1(_wgslsmith_f_op_f32(ceil(1844f)) < -1487f, var_0.b, global2.c, vec3<bool>(select(global2.c, false, true), global2.a, ~(var_2.d.b.x << (21902u % 32u)) <= firstLeadingBit(~global0.b.x)), _wgslsmith_f_op_f32(trunc(global2.e)));
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_3 {
    global2 = arg_3;
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_2.e)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.e - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_2.e)), _wgslsmith_f_op_f32(f32(-1f) * -509f)))) * -305f);
    let var_1 = -4340i;
    var var_2 = _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(~(-vec4<i32>(var_1, -7747i, -1i, 0i)) | min(firstTrailingBit(vec4<i32>(-8521i, 0i, u_input.a, -2147483647i)), vec4<i32>(6784i, 12576i, u_input.a, 4321i)), vec4<i32>(~1i, -select(arg_1, arg_1, arg_3.c), 10782i, -arg_1)), vec4<i32>(-1i, ~0i, 59389i, -2147483647i));
    var var_3 = !select(arg_2.d.zy, vec2<bool>(false, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), !vec2<bool>(arg_2.d.x, arg_3.d.x)), vec2<bool>(any(vec4<bool>(global0.c, true, arg_3.a, true)), any(vec3<bool>(global0.a, arg_2.a, global0.d.x))), func_1(true).d.xy));
    return Struct_3(!vec3<bool>(any(!vec4<bool>(true, global2.c, true, true)), firstLeadingBit(1i) < ~u_input.d.x, global0.d.x), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(998f, 692f, global0.e)))))))), _wgslsmith_mod_u32(abs(countOneBits(u_input.c >> (u_input.c % 32u))), _wgslsmith_clamp_u32(4294967295u, firstTrailingBit(~global0.b.x), ~1u)));
}

fn func_5(arg_0: Struct_3, arg_1: bool) -> Struct_2 {
    global3 = array<Struct_2, 12>();
    global2 = func_1(!global2.d.x);
    var var_0 = ~vec3<u32>(~(~arg_0.c >> (~global0.b.x % 32u)), _wgslsmith_sub_u32(60852u, _wgslsmith_add_u32(~global2.b.x, firstLeadingBit(u_input.e))), 0u);
    global2 = func_1(true);
    return global3[_wgslsmith_index_u32(1u, 12u)];
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    return Struct_1(select(true, true, any(select(select(vec3<bool>(false, false, global2.d.x), global0.d, false), global0.d, true))), global0.b, false, func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global2.e + 1335f), _wgslsmith_f_op_f32(abs(-398f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.e, 896f))), ~u_input.b, Struct_1(any(select(vec4<bool>(true, arg_0.d.c, false, true), vec4<bool>(global2.a, false, true, false), vec4<bool>(arg_0.a.c, arg_0.e.x, global2.d.x, global0.a))), ~firstLeadingBit(vec4<u32>(4294967295u, 9015u, 4294967295u, 85183u)), !all(global0.d.zx), vec3<bool>(global2.a, 36943u <= global2.b.x, !global0.c), _wgslsmith_f_op_f32(max(474f, _wgslsmith_f_op_f32(344f + global0.e)))), func_5(func_4(vec2<f32>(-278f, 216f), ~u_input.a, func_5(Struct_3(vec3<bool>(false, false, global2.a), vec3<f32>(arg_0.c.e, arg_0.c.e, -1000f), u_input.c), global0.a).a, func_1(arg_0.d.a)), !(arg_0.a.e == -260f)).d).a, 617f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(func_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.e, global2.e)))), 0i, Struct_1(!global0.c, global0.b & global2.b, global2.a, !global2.d, global0.e), func_1(false)), global2.d.x));
    let var_1 = _wgslsmith_dot_vec3_i32(abs(u_input.d), u_input.d);
    let var_2 = ~(~25058u);
    var var_3 = -1000f;
    var var_4 = ~_wgslsmith_div_u32(global2.b.x, _wgslsmith_mod_u32(66362u, _wgslsmith_dot_vec4_u32(vec4<u32>(15320u, 4294967295u, global2.b.x, u_input.e) << (global0.b % vec4<u32>(32u)), func_1(global0.c).b)));
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~_wgslsmith_add_u32(15703u | var_0.b.x, 0u), var_0.b.x, ~func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(885f, global0.e)), max(u_input.b, u_input.b), var_0, func_1(true)).c), ~firstLeadingBit(u_input.d), global0.b.yxz, u_input.e);
}

